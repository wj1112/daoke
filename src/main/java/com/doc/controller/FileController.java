package com.doc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.doc.service.FileService;

@Controller
public class FileController {

	@Autowired
	private FileService fileService;
	
	@RequestMapping(value="/deleteFile",method=RequestMethod.GET)    
    public String delete(HttpServletRequest request, @RequestParam("id") Integer id){		
		fileService.remove(id);
        return "redirect:queryUsers"; 
    }
	
	
}
