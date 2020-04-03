package controller;

import domain.Person;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class GetStatus extends RequestHandler {
    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Person person = super.getPersonService().getPerson(((Person)request.getSession().getAttribute("user")).getUserId());
        String status = person.getStatus();


        String quoteJSON = this.toJSON(status);
        response.setContentType("text/json");
        response.getWriter().write(quoteJSON);
    }

    private String toJSON (String status) {
        StringBuffer json = new StringBuffer();

        json.append("{ \"status\" : \"");
        json.append(status);
        json.append("\"}");

        return json.toString();
    }
}
