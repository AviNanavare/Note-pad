package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.Note;
import com.helper.FactoryProvider;

public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateServlet() {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int id = Integer.parseInt(request.getParameter("id").trim());
			
			Session session4 = FactoryProvider.getFactory().openSession();
			Transaction tx = session4.beginTransaction();
			
			Note n = session4.get(Note.class, id);
			n.setTitle(title);
			n.setContent(content);
			n.setAddedDate(new Date());
			
			tx.commit();
			session4.close();
			response.sendRedirect("view_notes.jsp");
			
		} catch (Exception e) {
				e.printStackTrace();
		}
	}

}
