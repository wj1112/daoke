package com.doc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.doc.entity.File;
import com.doc.entity.Users;
import com.doc.service.FileService;
import com.doc.service.UsersService;

@Controller
public class TreeController {
	
	@Autowired
	UsersService usersService;
	@Autowired
	FileService fileService;
	
	@RequestMapping(value="/queryUsers")
    public String queryUser(HttpServletRequest request,	@ModelAttribute("users") Users users,ModelMap model){		
		List<Users> usersList = usersService.getList(users);
		model.addAttribute("page", "/UsersManager/userList.jsp");
		model.addAttribute("usersList", usersList); 
        return "index"; 
    }
	@RequestMapping(value="/queryFile")
    public String queryFile(HttpServletRequest request,	@ModelAttribute("file") File file,ModelMap model){		
		List<File> fileList = fileService.getList(file);
		model.addAttribute("page", "/FileManager/file.jsp");
		model.addAttribute("fileList", fileList); 
        return "index"; 
    }
	
}
