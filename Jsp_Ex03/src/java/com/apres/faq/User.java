package com.apress.faq;

import java.util.ArrayList;

public class User {
  private String firstName;
  private String surname;
  private String loginName;
  private int age;
  private ArrayList arr = new ArrayList();
  private ArrayList ans = new ArrayList();

  
  public void addAnswer(String ques)
  {
      ans.add(ques);
  }
  
  public ArrayList getAnsList()
  {
      return ans;
  }
  
  public void addQuestion(String ques)
  {
      arr.add(ques);
  }
  
  public ArrayList getList()
  {
      return arr;
  }
  
  public String getFirstName() { return firstName; }
  public void setFirstName(String newFirstName) {
    this.firstName = newFirstName;
  }

  public String getSurname() { return surname; }
  public void setSurname(String newSurname) {
    this.surname = newSurname;
  }

  public String getLoginName() { return loginName; }
  public void setLoginName(String newLoginName) {
    this.loginName = newLoginName;
  }
  public int getAge() { return age; }
  public void setAge(int newAge) {
    this.age = newAge;
  }
}
