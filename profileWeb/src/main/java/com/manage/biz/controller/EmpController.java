package com.manage.biz.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.manage.biz.service.EmpService;
import com.manage.biz.vo.Emp;

/**
 * Handles requests for the application home page.
 */
@Controller
public class EmpController {
	
	@Autowired
	EmpService empService;
	
	private static final Logger logger = LoggerFactory.getLogger(EmpController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	@RequestMapping("/empList")
	public String empList(Locale locale, Model model) throws Exception {

		model.addAttribute("empList", empService.getAllList());
		
		return "emp/EmpList";
	}
	
	@RequestMapping("/add")
	public String addEmp(){
		return "emp/EmpAdd";
	}
	
	@RequestMapping("/insert")
	public String insertEmp(Emp emp) throws Exception{
		
		empService.insertEmp(emp);
		return "redirect:empList";
	}
	
	@RequestMapping("/schPerson")
	public String searchEmpName(Emp emp,  Model model) throws Exception{
		System.out.println(emp.getEname());
		model.addAttribute("person", empService.selectEmpInfo(emp));
		return "emp/Person";
	}
	
}
