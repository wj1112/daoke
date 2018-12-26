package com.doc.entity;

import java.util.Date;

public class UploadNotice {

	private int id ;
	private int userId;
	private String code;
	private String type;
	private Date createtime;
	private Date updatetime;
	private String content;
	private String title;
	
	public UploadNotice() {
	}
	public UploadNotice(int id,int userId,String code,String type,Date creatime,String content) {
		this.id = id;
		this.userId = userId;
		this.code = code;
		this.type = type;
		this.createtime = creatime;
		this.content = content;
	}
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
	public String getName() {
		return code;
	}
	public void setName(String code) {
		this.code = code;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "UploadNotice [id=" + id + ", userId=" + userId + ", name=" + code + ", type=" + type + ", createtime="
				+ createtime + ", content=" + content + ", notice_type=" + "]";
	}
	
}
