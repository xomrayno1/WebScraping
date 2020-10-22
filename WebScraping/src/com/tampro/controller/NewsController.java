package com.tampro.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tampro.model.News;
import com.tampro.model.Paging;
import com.tampro.service.NewService;

@WebServlet("/news")
public class NewsController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public NewService newService = new NewService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Paging paging = new Paging(16);
		String name = request.getParameter("category");
		if(request.getParameter("page") != null) {
			paging.setPageIndex(Integer.parseInt(request.getParameter("page")));
		}else {
			paging.setPageIndex(1);
		}
		List<News> listNews = newService.getAll(paging,name);
		request.setAttribute("listNews", listNews);
		request.setAttribute("pageInfo", paging);
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/news.jsp");
		dispatcher.forward(request, response);
	}
}
