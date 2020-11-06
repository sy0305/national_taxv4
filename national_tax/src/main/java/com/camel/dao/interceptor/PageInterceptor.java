package com.camel.dao.interceptor;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import org.apache.ibatis.executor.parameter.ParameterHandler;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.reflection.DefaultReflectorFactory;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.SystemMetaObject;

import com.camel.bean.BaseBean;
import com.camel.util.Page;


/**
 * 自定义拦截器
 * @Intercepts:标识当前的类是一个拦截器
 * @Signature(type=StatementHandler.class,method="prepare",args={Connection.class})
 * 它标记了当前的拦截器只会拦截StatementHandler接口中的prepare方法，因为这个方法的的参数是Connection类型的，
 * 所以需要使用args={Connection.class}指定参数的类型
 * @author ttc
 *
 */

@Intercepts({@Signature(type=StatementHandler.class,method="prepare",args={Connection.class})})
public class PageInterceptor implements Interceptor {

	public Object intercept(Invocation invocation) throws Throwable {
		// 获取目标对象
		StatementHandler statementHandler = (StatementHandler) invocation.getTarget();
		// 获取到元数据对象，从这个对象中可以通过其中的方法获取到我们要处理（拦截）的操作
		MetaObject metaObject = MetaObject.forObject(statementHandler, SystemMetaObject.DEFAULT_OBJECT_FACTORY,
				SystemMetaObject.DEFAULT_OBJECT_WRAPPER_FACTORY, new DefaultReflectorFactory());
		// 根据KEY获取到映射对象MappedStatement---------------slipDao.xml
		MappedStatement mappedStatement = (MappedStatement) metaObject.getValue("delegate.mappedStatement");
		// 获取到要拦截操作的ID
		String id = mappedStatement.getId();
		if (id.endsWith("ByPage")) {
			BoundSql boundSql = statementHandler.getBoundSql();
			// 获取到Mapper.xml中的SQL
			String sql = boundSql.getSql();
			// 计算总的记录数
			String countSql = "select count(*) from(" + sql + ")t";
			// 获取到Statement prepare(Connection connection)
			Connection conn = (Connection) invocation.getArgs()[0];
			PreparedStatement statement = conn.prepareStatement(countSql);
			// 通过代理获取到ParameterHandler对象，目的是要将？替换为具体值
			ParameterHandler parameterHandler = (ParameterHandler) metaObject.getValue("delegate.parameterHandler");
			parameterHandler.setParameters(statement);
			// JDBC的执行查询
			ResultSet rs = statement.executeQuery();

			BaseBean bean = (BaseBean) boundSql.getParameterObject();

			Page page = bean.getPage();
			if (rs.next()) {
				page.setTotalNumber(rs.getInt(1));
			}

			// 通过上面的分析分页的格式：
			// select * from table limit (start-1)*limit,limit;
			// 其中start是页码，limit是每页显示的条数。
			String pageSql = sql + " limit "+(page.getCurrentPage()-1)*page.getPageNumber()+","+page.getPageNumber();
			//重写分页的SQL
			metaObject.setValue("delegate.boundSql.sql", pageSql);

		}
		//将执行权交给下一个拦截器
		return invocation.proceed();
	}

	public Object plugin(Object target) {
		// TODO Auto-generated method stub
		return Plugin.wrap(target, this);
	}


	public void setProperties(Properties properties) {
		// TODO Auto-generated method stub

	}

}
