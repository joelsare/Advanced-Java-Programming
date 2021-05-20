package com.apres;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author joel
 */
public class Storage extends SimpleTagSupport {

    private String username;
    private String email;
    private String phone;
    private String calculus;
    private String pottery;
    private String chemistry;

    public void setPottery(String pottery) {
        if (pottery != null) {
            if (pottery.equals("on")) {
                this.pottery = "checked";
            }
        }
    }

    public void setChemistry(String chemistry) {
        if (chemistry != null) {
            if (chemistry.equals("on")) {
                this.chemistry = "checked";
            }
        }
    }

    public String getPottery() {
        return pottery;
    }

    public String getChemistry() {
        return chemistry;
    }

    public void setCalculus(String calculus) {
        if (calculus != null) {
            if (calculus.equals("on")) {
                this.calculus = "checked";
            }
        }

    }

    public String getCalculus() {
        return calculus;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPhone() {
        return phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException {
        JspWriter out = getJspContext().getOut();

        try {
            // TODO: insert code to write html before writing the body content.
            // e.g.:
            //
            // out.println("<strong>" + attribute_1 + "</strong>");
            // out.println("    <blockquote>");

            JspFragment f = getJspBody();
            if (f != null) {
                f.invoke(out);
            }

            // TODO: insert code to write html after writing the body content.
            // e.g.:
            //
            // out.println("    </blockquote>");
        } catch (java.io.IOException ex) {
            throw new JspException("Error in Storage tag", ex);
        }
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

}
