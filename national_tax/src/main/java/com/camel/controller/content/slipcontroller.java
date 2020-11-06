package com.camel.controller.content;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.camel.bean.Slip;
import com.camel.service.SlipService;
import com.camel.constant.PageCodeEnum;
@Controller
@RequestMapping("/slip")
public class slipcontroller {
	@Autowired
	private SlipService slipService;
	@RequestMapping("/search")
	public String init(ModelMap modelMap,Slip slip){
	List<Slip> list=slipService.searchByPage(slip);
	modelMap.addAttribute("searchParam", slip);
		modelMap.addAttribute("list",list);

		return "/content/index";
	}
	
	
	@RequestMapping("/add")
	public String add(Slip slip,ModelMap modelMap){
		//后期获取工资表的信息
	
		if(slipService.add(slip)){
			modelMap.addAttribute(PageCodeEnum.KEY,PageCodeEnum.ADD_SUCCESS);
		}else {
			modelMap.addAttribute(PageCodeEnum.KEY,PageCodeEnum.ADD_FALI);
		}
		
		
		return "/content/taxadd";
		
		
		
	}
	
	@RequestMapping("/addInit")
	public String addInit() {
		return "/content/taxadd";
	}
	@RequestMapping("/dengru")
	public String dengru(){
		
		return "/content/dengru";
		
		
	}
	
	@RequestMapping("/dodelete/{slip_id}")
	public String dodelete(@PathVariable(value="slip_id") int slip_id){
		
		slipService.indeleteById(slip_id);
		
		
		return "/content/taxuser";	
	}
	//根据ID查询
	@RequestMapping("/doupdate/{slip_id}")
	public String doupdate(@PathVariable(value="slip_id") int slip_id,ModelMap modelMap){
		modelMap.addAttribute("slip", slipService.inSelectById(slip_id));
		return "/content/updateslip";	
	}
	//修改
	@RequestMapping("/doupdateInfo")
	public String doupdate(Slip slip,ModelMap modelMap){
		if(slipService.inUpDate(slip)){
			modelMap.addAttribute(PageCodeEnum.KEY,PageCodeEnum.MODIFY_SUCCESS);
		}else {
			modelMap.addAttribute(PageCodeEnum.KEY,PageCodeEnum.MODIFY_FAIL);
		}
		return "/content/updateslip";	
	}
	
	public String UserDengRu(HttpServletRequest request){
	
		HttpSession session =request.getSession();
		
		return null;
		
	}
}
