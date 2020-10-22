package com.tampro.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.tampro.model.News;
import com.tampro.model.Paging;

public class NewService {
	
	public List<News> getAll(Paging paging,String name) throws IOException{
		List<News> listNews = null;
		Document document = null;
		Elements elements = null;
		switch (name) {
			case "bongda.com.vn" :
				listNews = new ArrayList();
				document = Jsoup.connect("http://www.bongda.com.vn/").get();
				elements = document.getElementsByClass("first");
				for(Element element : elements) {
					News news = new News();
					news.setTitle(element.child(0).attr("title"));
					news.setDetailUrl(element.child(0).attr("href"));
					news.setImgThumb(element.getElementsByTag("img").attr("src"));
					listNews.add(news);
				}
				paging.setTotalProduct(elements.size());
				return listNews.subList(paging.getOffSet(), paging.getToResult());
			case "zingnews.vn" :
				listNews = new ArrayList();
				document = Jsoup.connect("https://zingnews.vn/the-thao.html").get();
				elements = document.getElementsByClass("article-item");
				System.out.println(elements.size());
				for(Element element : elements) {
					News news = new News();
					System.out.println(element.child(0).child(0).child(0).attr("src"));
					//news.setImgThumb(element.child(0).child(0).child(0).attr("src"));
					news.setImgThumb(element.getElementsByTag("img").attr("src"));
					news.setDetailUrl("https://zingnews.vn/"+element.childNode(1).childNode(1).attr("href"));
					news.setTitle(element.child(1).child(0).child(0).html());
					listNews.add(news);
				}
				paging.setTotalProduct(elements.size());
				return listNews.subList(paging.getOffSet(), paging.getToResult());
			default:
				break;
			}
		return listNews;
		
	}

}
