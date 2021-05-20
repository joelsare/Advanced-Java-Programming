/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.apres.faq;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author joel
 */
public class SimpleList extends SimpleTagSupport {

    private String topic;

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
    Questions questions = new Questions();
    questions.setTopic(topic);

    // Get list of questions and the iterator for the keys
    Map qmap = questions.getQuestions();
    Iterator keys = qmap.keySet().iterator();

    while (keys.hasNext()) {
      try {
        Object key = keys.next();
        // Store the parameters for invoke()
        getJspContext().setAttribute("qid", key);
        getJspContext().setAttribute("question", qmap.get(key));
        // Process the body
        //getJspBody().invoke(null);
		JspFragment f = getJspBody();
        if (f != null) f.invoke(null);
      } catch (IOException e) {
        throw new JspException("Exception processing body");
      }
    }
  }
    

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getTopic() {
        return topic;
    }
    
    
}
