package controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import domain.BlogPost;
import domain.BlogPostComment;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.concurrent.BlockingDeque;

public class AddBlogPost extends RequestHandler {
    @Override
    public void handleRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        int id = Integer.parseInt(request.getParameter("id"));
        int rating = Integer.parseInt(request.getParameter("rating"));
        String comment = request.getParameter("comment");

        BlogPostComment blogPostComment = new BlogPostComment(name,comment, rating);
        BlogPost blogPost = super.getPersonService().getBlogPosts(id);
        super.getPersonService().addBlogPostComment(blogPost,blogPostComment);
        System.out.println("dit wordt uitgevoerd");

    }
}
