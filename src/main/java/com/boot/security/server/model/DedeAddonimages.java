package com.boot.security.server.model;



public class DedeAddonimages extends BaseEntity<Long> {

	private String aid;
	private String typeid;
	private String pagestyle;
	private String maxwidth;
	private String imgurls;
	private String row;
	private String col;
	private String isrm;
	private String ddmaxwidth;
	private String pagepicnum;
	private String templet;
	private String userip;
	private String redirecturl;
	private String body;

	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getTypeid() {
		return typeid;
	}
	public void setTypeid(String typeid) {
		this.typeid = typeid;
	}
	public String getPagestyle() {
		return pagestyle;
	}
	public void setPagestyle(String pagestyle) {
		this.pagestyle = pagestyle;
	}
	public String getMaxwidth() {
		return maxwidth;
	}
	public void setMaxwidth(String maxwidth) {
		this.maxwidth = maxwidth;
	}
	public String getImgurls() {
		return imgurls;
	}
	public void setImgurls(String imgurls) {
		this.imgurls = imgurls;
	}
	public String getRow() {
		return row;
	}
	public void setRow(String row) {
		this.row = row;
	}
	public String getCol() {
		return col;
	}
	public void setCol(String col) {
		this.col = col;
	}
	public String getIsrm() {
		return isrm;
	}
	public void setIsrm(String isrm) {
		this.isrm = isrm;
	}
	public String getDdmaxwidth() {
		return ddmaxwidth;
	}
	public void setDdmaxwidth(String ddmaxwidth) {
		this.ddmaxwidth = ddmaxwidth;
	}
	public String getPagepicnum() {
		return pagepicnum;
	}
	public void setPagepicnum(String pagepicnum) {
		this.pagepicnum = pagepicnum;
	}
	public String getTemplet() {
		return templet;
	}
	public void setTemplet(String templet) {
		this.templet = templet;
	}
	public String getUserip() {
		return userip;
	}
	public void setUserip(String userip) {
		this.userip = userip;
	}
	public String getRedirecturl() {
		return redirecturl;
	}
	public void setRedirecturl(String redirecturl) {
		this.redirecturl = redirecturl;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}

}
