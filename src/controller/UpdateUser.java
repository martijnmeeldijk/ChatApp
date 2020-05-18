package controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import domain.Person;
import domain.Role;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UpdateUser extends RequestHandler {
    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("userId");
        String status = request.getParameter("status");
        System.out.println(firstName + lastName + email + status);
        System.out.println("firstName + lastName + email + status");

        Person person = super.getPersonService().getPerson(email);
        person.setFirstName(firstName);
        person.setLastName(lastName);
        person.setStatus(status);
        super.getPersonService().updatePersons(person);
        ObjectMapper mapper = new ObjectMapper();
        String json = "";
        try {
            json = mapper.writeValueAsString(person);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        response.setContentType("text/json");

        response.getWriter().write(json);
    }
}
