package com.doc.dao.impl;

import org.springframework.stereotype.Repository;

import com.doc.dao.FileDao;
import com.doc.entity.File;

import ssm.dao.impl.CoreDaoImpl;

@Repository
public class FileDaoImpl extends CoreDaoImpl<File> implements FileDao {

}
