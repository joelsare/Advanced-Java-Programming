/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;

import javax.ejb.Remote;

/**
 *
 * @author Xin
 */
@Remote
public interface CalculatorBeanRemote {

    void calculate(String operation, int value);

    int getValue();

    void clearIt();
    
}
