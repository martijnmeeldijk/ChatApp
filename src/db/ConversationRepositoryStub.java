package db;

import domain.Conversation;
import domain.Person;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ConversationRepositoryStub implements ConversationRepository {

    List<Conversation> conversations;

    public ConversationRepositoryStub(){
        conversations = new ArrayList<>();
    }

    @Override
    public Conversation getConversation(List<Person> participants) {
        for(Conversation c : conversations){
            if(equalLists(c.getParticipants(), participants)) return c;
        }
        Conversation newConversation = new Conversation(participants);
        newConversation.addMessage(new Person(), "Start of conversation");
        conversations.add(newConversation);

        return newConversation;
    }

    private boolean equalLists(List<Person> one, List<Person> two){
        if (one == null && two == null){
            return true;
        }

        if((one == null && two != null)
                || one != null && two == null
                || one.size() != two.size()){
            return false;
        }


        one = new ArrayList<Person>(one);
        two = new ArrayList<Person>(two);

        Collections.sort(one);
        Collections.sort(two);
        return one.equals(two);
    }



}
