package db;

import domain.Conversation;
import domain.Person;

import java.util.List;

public interface ConversationRepository {

    Conversation getConversation(List<Person> participants);

}
