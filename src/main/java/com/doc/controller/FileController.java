package com.doc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.doc.service.FileService;

@Controller
@RequestMapping(value="file")
public class FileController {

	@Autowired
	private FileService fileService;
	
	//用户详情
	@RequestMapping(value="/detail")
	public String detail(HttpServletRequest request , @RequestParam Integer id, ModelMap model) {
		model.addAttribute("file",fileService.getOne(id));
		model.addAttribute("page","FileManager/particulars.jsp");
		return "index";
	}
	//添加用户
	@RequestMapping(value="/add")
	public String add(HttpServletRequest request , ModelMap model) {
		model.addAttribute("page","FileManager/save.jsp");
		return "index";
	}
	//修改用户
	@RequestMapping(value="/edit")
	public String edit(HttpServletRequest request, @RequestParam Integer id , ModelMap model) {
		model.addAttribute("file" , fileService.getOne(id));
		model.addAttribute("page","FileManager/save.jsp");
		return "index";
	}
	@RequestMapping(value="/delete",method=RequestMethod.GET)    
    public String delete(HttpServletRequest request, @RequestParam("id") Integer id){		
		fileService.remove(id);
        return "redirect:queryUsers"; 
    }
	
	
}
