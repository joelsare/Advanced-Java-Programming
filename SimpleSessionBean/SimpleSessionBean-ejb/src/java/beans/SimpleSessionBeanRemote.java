/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import javax.ejb.Remote;

/**
 *
 * @author joel
 */
@Remote
public interface SimpleSessionBeanRemote {

    String getEchoString(String clientString);
    
}
