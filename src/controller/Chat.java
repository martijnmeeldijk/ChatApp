package controller;

import domain.Person;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Chat extends RequestHandler {
    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Person person = (Person)request.getSession().getAttribute("user");
        //request.setAttribute("status", person.getStatus());

        request.getRequestDispatcher("chat.jsp").forward(request,response);
    }
}
