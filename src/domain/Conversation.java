package domain;

import com.sun.org.glassfish.external.amx.AMX;
import sun.dc.path.PathError;

import java.util.ArrayList;
import java.util.List;

public class Conversation {
    List<Person> participants;
    List<Message> messages;

    public Conversation(List<Person> participants){
        this.participants = participants;

        messages = new ArrayList<>();
        messages.add(new Message(new Person(), "Start of conversation"));
    }
    public void addMessage(Person sender, String message){
        messages.add(new Message(sender, message));
    }

    public List<Person> getParticipants() {
        return participants;
    }

    public List<Message> getMessages() {
        return messages;
    }
}
