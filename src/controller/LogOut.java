package controller;

import domain.Person;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LogOut extends RequestHandler {

	@Override
	public void handleRequest(HttpServletRequest request,
							  HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Person person = (Person) session.getAttribute("user");
		person.setStatus("offline");
		super.getPersonService().updatePersons(person);
		session.invalidate();
		request.getRequestDispatcher("index.jsp").forward(request,response);
	}
	
}
