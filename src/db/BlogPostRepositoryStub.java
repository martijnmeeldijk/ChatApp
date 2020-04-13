package db;

import domain.BlogPost;
import domain.BlogPostComment;
import domain.Person;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BlogPostRepositoryStub implements BlogPostRepository {
    private List<BlogPost> posts = new ArrayList<>();

    public BlogPostRepositoryStub(){
        BlogPost post1 = new BlogPost(1, "Hoe groot is de kans dat corona ons in de ruimte ook kan besmetten?");
        BlogPostComment comment1 = new BlogPostComment("Jaap","Niet hoog, we zitten zo hoog", 2);
        post1.addComment(comment1);

        BlogPost post2 = new BlogPost(2, "Wat vond je van de online lessen?");
        BlogPostComment comment2 = new BlogPostComment("Joep (ruimtehond)", "Best gezellig, ik zit graag thuis", 8);
        post2.addComment(comment2);

        BlogPost post3 = new BlogPost(3, "Wat is je lievelingsliedje?");
        BlogPostComment comment3 = new BlogPostComment("Joseph Stalin", "Red Army Anthem (10 hour version)", 10);
        post3.addComment(comment3);

        BlogPost post4 = new BlogPost(4, "Hoe laat is het op aarde?");
        BlogPostComment comment4 = new BlogPostComment("Dirk Frimout", "13u33 (denk ik)", 2);
        post4.addComment(comment4);

        BlogPost post5 = new BlogPost(5, "Wat vinden jullie van het eten hier?");
        BlogPostComment comment5 = new BlogPostComment("Frank", "Ranzig", 1);
        post5.addComment(comment5);

        posts.add(post1); posts.add(post2); posts.add(post3); posts.add(post4); posts.add(post5);


    }

    @Override
    public void add(BlogPost post) {
        posts.add(post);
    }

    @Override
    public void addComment(BlogPost post, BlogPostComment comment) {
        post.addComment(comment);
    }

    @Override
    public BlogPost get(int id) {
        for(BlogPost b : posts){
            if(b.getId() == id) return b;
        }
        throw new DbException("Blogpost niet gevonden");
    }

    @Override
    public void delete(int id) {
        BlogPost blogPost = null;
        for(BlogPost b : posts){
            if(b.getId() == id) blogPost = b;
        }
        posts.remove(blogPost);
    }

    @Override
    public List<BlogPost> getAll() {
        return posts;
    }
}
