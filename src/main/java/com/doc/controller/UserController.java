package com.doc.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.doc.entity.Users;
import com.doc.service.UsersService;
import com.doc.util.PasswordUtil;
import com.doc.util.UploadUtils;

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
    public String save(HttpServletRequest request,@ModelAttribute("users")Users users,@RequestParam("file")CommonsMultipartFile file,ModelMap model){		
		if(users.getId() == null) {
			UploadUtils uploadUtils = new UploadUtils();
			users.setHeadPortrait(uploadUtils.uploadFile(request,file,"userImage"));
			users.setPassword(PasswordUtil.entryptPassword(users.getPassword()));
			usersService.create(users);
		}else {
			usersService.modify(users);
		}
        return "redirect:queryUsers"; 
    }
	
	@RequestMapping(value="/deleteUsers",method=RequestMethod.GET)    
    public String delete(HttpServletRequest request, @RequestParam("id") Integer id){		
		usersService.remove(id);
        return "redirect:queryUsers"; 
    }
	
	
	@InitBinder   
    public void initBinder(WebDataBinder binder) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");   
        dateFormat.setLenient(true); 
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));   
    }
}
