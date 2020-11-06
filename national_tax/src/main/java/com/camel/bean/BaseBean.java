package com.camel.bean;

import com.camel.util.Page;

/**
 * 分页的基础bean
 * @author ttc
 *
 */
public class BaseBean {
	
	private Page page;

	public BaseBean() {
		this.page = new Page();
	}
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
}
