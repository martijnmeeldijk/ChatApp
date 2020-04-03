package controller;

import domain.Person;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddFriend extends RequestHandler {
    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("add");
        Person person = super.getPersonService().getPerson(((Person)request.getSession().getAttribute("user")).getUserId());
        Person friend = super.getPersonService().getPerson(email);
        super.getPersonService().makeFriends(person, friend);
    }
}
