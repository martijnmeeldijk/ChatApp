package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import domain.Person;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetFriends extends RequestHandler {
    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Person person = super.getPersonService().getPerson(((Person)request.getSession().getAttribute("user")).getUserId());
        List<Person> friends = person.getFriends();

        String json = this.toJSON(friends);
        response.setContentType("text/json");
        response.getWriter().write(json);
    }

    private String toJSON(List<Person> friends) {
        ObjectMapper mapper = new ObjectMapper();
        String json = "";
        try {
            json = mapper.writeValueAsString(friends);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return json;
    }


}
