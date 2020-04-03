package controller;

import domain.Person;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SetStatus extends RequestHandler {
    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String status = request.getParameter("status");
        Person person = super.getPersonService().getPerson(((Person)request.getSession().getAttribute("user")).getUserId());
        person.setStatus(status);
        super.getPersonService().updatePersons(person);

    }

    private String toJSON (String status) {
        StringBuffer json = new StringBuffer();

        json.append("{ \"status\" : \"");
        json.append(status);
        json.append("\"}");

        return json.toString();
    }
}
