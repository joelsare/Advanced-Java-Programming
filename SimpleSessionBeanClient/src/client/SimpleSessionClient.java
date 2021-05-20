/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package client;

import beans.SimpleSessionBeanRemote;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author joel
 */
public class SimpleSessionClient {

    /**
     * @param args the command line arguments
     */
        public static void main(String[] args) {
        // TODO code application logic here

        InitialContext ctx = null;

        try {
            ctx = new InitialContext();
            SimpleSessionBeanRemote simpleSession = (SimpleSessionBeanRemote) ctx.lookup(SimpleSessionBeanRemote.class.getName());
            for (int i = 0; i < args.length; i++) {
                String returnedString = simpleSession.getEchoString(args[i]);
                System.out.println("sent string: " + args[i]
                        + ", received string: " + returnedString);
            }
        } catch (NamingException ex) {
            Logger.getLogger(SimpleSessionClient.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
