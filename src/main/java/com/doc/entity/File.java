package com.doc.entity;

import java.util.Date;

public class File {

	private int id ;
	private int userId;
	private String title;
	private String filename;
	private Date createtime;
	private String path;
	private String type;
	private int download;
	private int browse;
	private int classifyId;
	private String outline;
	private int audit;
	
	public File() {
		// TODO Auto-generated constructor stub
	}
	
	public File(int id, int userId, String filename, Date createtime, String path, int download, int browse) {
		this.id = id;
		this.userId = userId;
		this.filename = filename;
		this.createtime = createtime;
		this.path = path;
		this.download = download;
		this.browse = browse;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getuserId() {
		return userId;
	}
	
	public void setuserId(int userId) {
		this.userId = userId;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getType() {
		return type;
	}
	public int getDownload() {
		return download;
	}
	public void setDownload(int download) {
		this.download = download;
	}
	public int getBrowse() {
		return browse;
	}
	public void setBrowse(int browse) {
		this.browse = browse;
	}
	public String getOutline() {
		return outline;
	}
	public void setOutline(String outline) {
		this.outline = outline;
	}
	public int getClassifyId() {
		return classifyId;
	}
	public void setClassifyId(int classifyId) {
		this.classifyId = classifyId;
	}
	public void setAudit(int audit) {
		this.audit = audit;
	}
	public int getAudit() {
		return audit;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitle() {
		return title;
	}

	@Override
	public String toString() {
		return "UploadFile [id=" + id + ", userId=" + userId + ", filename=" + filename + ", createtime=" + createtime
				+ ", path=" + path + ", type=" + type + ", download=" + download + ", browse=" + browse
				+ ", classifyId=" + classifyId  + ", outline=" + outline + "]";
	}

}
