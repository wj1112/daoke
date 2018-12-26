package com.doc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.doc.entity.Users;
import com.doc.service.UsersService;

@Controller
public class UserController {

	@Autowired
	private UsersService usersService;
	
	//用户详情
	@RequestMapping(value="/detailUsers")
	public String detail(HttpServletRequest request , @RequestParam Integer id, ModelMap model) {
		model.addAttribute("users",usersService.getOne(id));
		model.addAttribute("page","UsersManager/detail.jsp");
		return "index";
	}
	//添加用户
	@RequestMapping(value="/addUsers")
	public String add(HttpServletRequest request , ModelMap model) {
		model.addAttribute("page","UsersManager/saveUser.jsp");
		return "index";
	}
	
	//修改用户
	@RequestMapping(value="/editUsers")
	public String edit(HttpServletRequest request, @RequestParam Integer id , ModelMap model) {
		model.addAttribute("users" , usersService.getOne(id));
		model.addAttribute("page","UsersManager/saveUser.jsp");
		return "index";
	}
	
	@RequestMapping(value="/saveUsers")
    public String save(HttpServletRequest request,@ModelAttribute("users")Users users,ModelMap model){		
		System.out.println(users.toString());
		if(users.getId() == null) {
			System.out.println("添加");
			usersService.create(users);
		}else {
			System.out.println("修改");
			usersService.modify(users);
		}
        return "redirect:queryUsers"; 
    }
	
	@RequestMapping(value="/deleteUsers",method=RequestMethod.GET)    
    public String delete(HttpServletRequest request, @RequestParam("id") Integer id){		
		usersService.remove(id);
        return "redirect:queryUsers"; 
    }
	
	
}
