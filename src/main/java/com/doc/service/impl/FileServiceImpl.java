package com.doc.service.impl;

import org.springframework.stereotype.Service;

import com.doc.entity.File;
import com.doc.service.FileService;

import ssm.service.impl.CoreServiceImpl;

@Service
public class FileServiceImpl extends CoreServiceImpl<File> implements FileService{

}
