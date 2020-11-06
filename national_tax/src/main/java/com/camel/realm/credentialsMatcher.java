package com.camel.realm;

import java.util.concurrent.atomic.AtomicInteger;

import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheManager;
/*创建RetryLimitHashedCredentialsMatcher类,此类有登录失败次数的判断，多于5次后再等待10分钟后才能重试。

缓存机制用到了Ehcache,Ehcache是很多Java项目中使用的缓存框架，Hibernate就是其中之一。它的本质就是将原本只能存储在内存中的数据通过算法保存到硬盘上，再根据需求依次取出。
你可以把Ehcache理解为一个Map<String,Object>对象，通过put保存对象，再通过get取回对象。*/
public class credentialsMatcher extends HashedCredentialsMatcher {
	private Cache<String, AtomicInteger> passwordRetryCache;

	public credentialsMatcher(CacheManager cacheManager) {
		passwordRetryCache = cacheManager.getCache("passwordRetryCache");
	}

	@Override
	public boolean doCredentialsMatch(AuthenticationToken token, AuthenticationInfo info) {
		String username = (String) token.getPrincipal();
		AtomicInteger retryCount = passwordRetryCache.get(username);
		if (retryCount == null) {
			retryCount = new AtomicInteger();
			passwordRetryCache.put(username, retryCount);
		}
		if (retryCount.incrementAndGet() > 5) {
			throw new ExcessiveAttemptsException();
		}
		boolean matchs = super.doCredentialsMatch(token, info);
		if (matchs) {
			passwordRetryCache.remove(username);
		}
		return matchs;
	}

	public Cache<String, AtomicInteger> getPasswordRetryCache() {
		return passwordRetryCache;
	}

	public void setPasswordRetryCache(Cache<String, AtomicInteger> passwordRetryCache) {
		this.passwordRetryCache = passwordRetryCache;
	}

}
