package com.doc.service.impl;

import org.springframework.stereotype.Service;

import com.doc.entity.Users;
import com.doc.service.UsersService;

import ssm.service.impl.CoreServiceImpl;

@Service
public class UsersServiceImpl extends CoreServiceImpl<Users> implements UsersService{

}
