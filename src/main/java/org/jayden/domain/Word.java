package org.jayden.domain;

public class Word {
    private String name;
    private int id;
    private String phonetic; //音标
    private String definition;
    private String translation;
    private String exchange;

    @Override
    public String toString() {
        return "Word{" +
                "name='" + name + '\'' +
                ", id=" + id +
                ", phonetic='" + phonetic + '\'' +
                ", definition='" + definition + '\'' +
                ", translation='" + translation + '\'' +
                ", exchange='" + exchange + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPhonetic() {
        return phonetic;
    }

    public void setPhonetic(String phonetic) {
        this.phonetic = phonetic;
    }

    public String getDefinition() {
        return definition;
    }

    public void setDefinition(String definition) {
        this.definition = definition;
    }

    public String getTranslation() {
        return translation;
    }

    public void setTranslation(String translation) {
        this.translation = translation;
    }

    public String getExchange() {
        return exchange;
    }

    public void setExchange(String exchange) {
        this.exchange = exchange;
    }
}
