package com.doc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.doc.entity.Classify;
import com.doc.entity.File;
import com.doc.entity.UploadNotice;
import com.doc.entity.Users;
import com.doc.service.ClassifyService;
import com.doc.service.FileService;
import com.doc.service.UploadNoticeService;
import com.doc.service.UsersService;

@Controller
public class TreeController {
	
	@Autowired
	UsersService usersService;
	@Autowired
	FileService fileService;
	@Autowired
	ClassifyService classifyService;
	@Autowired
	UploadNoticeService uploadNoticeService;
	
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
		System.out.println(fileList.size());
		model.addAttribute("fileList", fileList); 
        return "index"; 
    }
	@RequestMapping(value="/queryClassify")
    public String queryClassify(HttpServletRequest request,	@ModelAttribute("classfiy") Classify classfiy,ModelMap model){		
		List<Classify> classfiyList = classifyService.getList(classfiy);
		model.addAttribute("page", "ClassifyManager/classify.jsp");
		model.addAttribute("classfiyList", classfiyList); 
        return "index"; 
    }
	@RequestMapping(value="/queryUploadNotice")
    public String queryUploadNotice(HttpServletRequest request,	@ModelAttribute("uploadNotice") UploadNotice uploadNotice,ModelMap model){		
		List<UploadNotice> uploadNoticeList = uploadNoticeService.getList(uploadNotice);
		model.addAttribute("page", "/NoticeManager/notice.jsp");
		model.addAttribute("uploadNoticeList", uploadNoticeList); 
        return "index"; 
    }
	
}
