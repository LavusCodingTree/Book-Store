package com.js.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.dao.BookCRUD;
import com.js.dto.Book;


@WebServlet(value = "/update")
public class UpdateStage1 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		
		Book b= BookCRUD.GetBooksById(id);
		
		if(b != null) {
			RequestDispatcher rd = req.getRequestDispatcher("update.jsp");
			req.setAttribute("book", b);
			rd.forward(req, resp);
		}else {
			RequestDispatcher rd = req.getRequestDispatcher("result.jsp");
			req.setAttribute("msg", "No Book To Update");
			rd.forward(req, resp);
		}
	}

}
