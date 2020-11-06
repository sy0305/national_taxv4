package com.camel.controller.system;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 主页面
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/index")
public class SlipController {

	
		@RequestMapping
		public String init() {
			return "/content/index";
		}
		
	}

