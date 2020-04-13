package domain;

public class BlogPostComment {
    String creator;
    String content;
    int rating;

    public BlogPostComment(String creator, String content, int rating) {
        this.creator = creator;
        this.content = content;
        this.rating = rating;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
}
