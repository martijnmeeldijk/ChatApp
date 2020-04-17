package controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import domain.Conversation;
import domain.Message;
import domain.Person;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

public class GetMessages extends RequestHandler {
    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Person otherPerson = super.getPersonService().getPerson(request.getParameter("id"));
        Person person = (Person)request.getSession().getAttribute("user");
        List<Message> conversation = super.getPersonService().getMessagesByIds(Arrays.asList(person.getUserId(), otherPerson.getUserId()));



        ObjectMapper mapper = new ObjectMapper();
        String JSON = mapper.writeValueAsString(conversation);

        response.setContentType("text/json");
        response.getWriter().write(JSON);

    }
}
