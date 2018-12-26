package com.doc.dao.impl;

import org.springframework.stereotype.Repository;

import com.doc.dao.UsersDao;
import com.doc.entity.Users;

import ssm.dao.impl.CoreDaoImpl;

@Repository
public class UsersDaoImpl extends CoreDaoImpl<Users> implements UsersDao {

}
