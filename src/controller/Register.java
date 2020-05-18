package controller;

import domain.Person;
import domain.Role;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Register extends RequestHandler {
    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("first-name");
        String lastName = request.getParameter("last-name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String repeat = request.getParameter("repeat-password");

        if(!password.equals(repeat)){
            request.getRequestDispatcher("register.jsp").forward(request,response);
            return;
        }
        Person person = new Person(email, password, firstName, lastName, Role.LID);
        super.getPersonService().addPerson(person);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
