package com.apres.faq;

import java.util.Map;
import java.util.HashMap;
import java.util.TreeMap;

public class Questions {
  private String topic;
  private int numQuestions;
  private Map questions = new HashMap();

  public String getTopic() { return topic; }
  public void setTopic(String t) {
    topic = t;
    setNumQuestions(getQuestions().size());
  }

  public int getNumQuestions() { return numQuestions; }
  public void setNumQuestions(int n) { numQuestions = n; }

  public Map getQuestions() {
    return (Map) questions.get(topic);
  }
  public void setQuestions(Map m) { questions = m; }

  public Questions() {
    Map topic = new TreeMap();
    topic.put("EL_1", "How do I use implicit objects?");
    topic.put("EL_2", "How do I use the JSTL?");
    topic.put("EL_3", "How do I use the 'empty' operator?");
    questions.put("EL", topic);
  }
}