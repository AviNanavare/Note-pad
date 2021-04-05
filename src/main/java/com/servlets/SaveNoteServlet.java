package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			try {
				
				String title = request.getParameter("title");
				String content = request.getParameter("content");
				
				Note note = new Note(title, content, new Date());
				
				Session session = FactoryProvider.getFactory().openSession();
				Transaction tx = session.beginTransaction();
				session.save(note);
				tx.commit();
				session.close();
				
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<h1 style='text-align:center;'>Note is Added</h1>"
						+ "<br>"
						+ "<h1 style='text-align:center;' ><a href='view_notes.jsp'>View All Notes</a></h1>");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
	}

}
