package com.tampro.model;

public class Paging {
	private int offSet;
	private long totalPage;
	private long totalProduct;
	private int numberPerPage;
	private int pageIndex ;
	private int toResult;
	
	
	
	public Paging() {
	}
	public Paging(int numberPerPage) {
		this.numberPerPage = numberPerPage;
	}
	public int getOffSet() {
		this.offSet =  (pageIndex * numberPerPage) - numberPerPage ;
		return offSet;
	}
	public void setOffSet(int offSet) {
		this.offSet = offSet;
	}
	public long getTotalPage() {
		totalPage = Math.round(totalProduct / (double) numberPerPage ); 
		return totalPage;
	}
	public void setTotalPage(long totalPage) {
		this.totalPage = totalPage;
	}
	public long getTotalProduct() {
		return totalProduct;
	}
	public void setTotalProduct(long totalProduct) {
		this.totalProduct = totalProduct;
	}
	public int getNumberPerPage() {
		return numberPerPage;
	}
	public void setNumberPerPage(int numberPerPage) {
		this.numberPerPage = numberPerPage;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getToResult() {
		this.toResult = numberPerPage * pageIndex;
		return toResult;
	}
	public void setToResult(int toResult) {
		this.toResult = toResult;
	}
	
	

}
