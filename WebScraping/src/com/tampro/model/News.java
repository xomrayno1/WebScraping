package com.tampro.model;

public class News {
	private String description;
	private String title;
	private String imgThumb;
	private String detailUrl;
	private String time;
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getImgThumb() {
		return imgThumb;
	}
	public void setImgThumb(String imgThumb) {
		this.imgThumb = imgThumb;
	}
	public String getDetailUrl() {
		return detailUrl;
	}
	public void setDetailUrl(String detailUrl) {
		this.detailUrl = detailUrl;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "News [description=" + description + ", title=" + title + ", imgThumb=" + imgThumb + ", detailUrl="
				+ detailUrl + ", time=" + time + "]";
	}
	
	
	

}
