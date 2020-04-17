package controller;

import domain.Conversation;
import domain.Person;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

public class SendMessage extends RequestHandler {
    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Person person = (Person)request.getSession().getAttribute("user");
        Person otherPerson = super.getPersonService().getPerson(request.getParameter("id"));

        super.getPersonService().addMessage(Arrays.asList(person,otherPerson), person, request.getParameter("message"));
    }
}
