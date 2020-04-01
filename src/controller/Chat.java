package controller;

import domain.Person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Chat extends RequestHandler {
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
        Person person = (Person)request.getSession().getAttribute("user");
        //request.setAttribute("status", person.getStatus());

        return "chat.jsp";
    }
}
