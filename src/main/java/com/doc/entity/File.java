package com.doc.entity;

import java.util.Date;

public class File {

	private int id ;
	private int userId;
	private String username;
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
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
	public int getClassifyId() {
		return classifyId;
	}
	public void setClassifyId(int classifyId) {
		this.classifyId = classifyId;
	}
	public String getOutline() {
		return outline;
	}
	public void setOutline(String outline) {
		this.outline = outline;
	}
	public int getAudit() {
		return audit;
	}
	public void setAudit(int audit) {
		this.audit = audit;
	}
	@Override
	public String toString() {
		return "File [id=" + id + ", userId=" + userId + ", username=" + username + ", title=" + title + ", filename="
				+ filename + ", createtime=" + createtime + ", path=" + path + ", type=" + type + ", download="
				+ download + ", browse=" + browse + ", classifyId=" + classifyId + ", outline=" + outline + ", audit="
				+ audit + "]";
	}
	
}
