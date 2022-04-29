package com.snehasish.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.snehasish.entities.Note;
import com.snehasish.util.FactoryProvider;

public class AddNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddNoteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");

			Note note = new Note(title, content);

			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();

			s.save(note);

			tx.commit();
			s.close();

			response.sendRedirect("success.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
