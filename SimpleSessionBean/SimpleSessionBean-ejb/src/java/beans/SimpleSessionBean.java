/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import javax.ejb.Stateless;

/**
 *
 * @author joel
 */
@Stateless
public class SimpleSessionBean implements SimpleSessionBeanRemote {

    @Override
    public String getEchoString(String clientString) {
        return clientString + " - from session bean";
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
}
