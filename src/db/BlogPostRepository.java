package db;

import domain.BlogPost;
import domain.BlogPostComment;

import java.util.List;

public interface BlogPostRepository {
    void add(BlogPost post);
    void addComment(BlogPost post, BlogPostComment comment);
    BlogPost get(int id);
    void delete(int id);
    List<BlogPost> getAll();

}
