package domain;

import java.util.ArrayList;
import java.util.List;

public class BlogPost {
    private int id;
    private String title;
    private List<BlogPostComment> comments;

    public BlogPost(int id, String title) {
        this.title = title;
        this.comments = new ArrayList<>();
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public List<BlogPostComment> getComments() {
        return comments;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void addComment(BlogPostComment comment){
        this.comments.add(comment);
    }
}
