package domain;

import java.util.List;

import db.BlogPostRepository;
import db.BlogPostRepositoryStub;
import db.PersonRepository;
import db.PersonRepositoryStub;

public class PersonService {
	private PersonRepository personRepository = new PersonRepositoryStub();
	private BlogPostRepository blogPostRepository = new BlogPostRepositoryStub();

	public PersonService(){
	}
	
	public Person getPerson(String personId)  {
		return getPersonRepository().get(personId);
	}

	public List<Person> getPersons() {
		return getPersonRepository().getAll();
	}

	public void addPerson(Person person) {
		getPersonRepository().add(person);
	}

	public void updatePersons(Person person) {
		getPersonRepository().update(person);
	}

	public void deletePerson(String id) {
		getPersonRepository().delete(id);
	}
	
	public Person getAuthenticatedUser(String email, String password) {
		return getPersonRepository().getAuthenticatedUser(email, password);
	}

	public void makeFriends(Person person1, Person person2){
		getPersonRepository().makeFriends(person1,person2);
	}

	private PersonRepository getPersonRepository() {
		return personRepository;
	}


	// BLOG POSTS
	private BlogPostRepository getBlogPostRepository() {
		return blogPostRepository;
	}

	public void addBlogPost(BlogPost post){
		this.getBlogPostRepository().add(post);
	}
	public void addBlogPostComment(BlogPost post, BlogPostComment comment){

		/*BlogPost newPost = this.getBlogPostRepository().get(post.getId());
		newPost.addComment(comment);
		updateBlogPost(newPost);*/

		this.getBlogPostRepository().addComment(post,comment);
	}
	public BlogPost getBlogPosts(int id){
		return this.getBlogPostRepository().get(id);
	}
	public void deleteBlogPosts(int id){
		this.getBlogPostRepository().delete(id);
	}
	public List<BlogPost> getAllBlogPosts(){
		return this.getBlogPostRepository().getAll();
	}

    public void updateBlogPost(BlogPost blogPost) {
		deleteBlogPosts(blogPost.getId());
		addBlogPost(blogPost);
    }
}
