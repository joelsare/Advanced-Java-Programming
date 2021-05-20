/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import javax.ejb.Stateful;


@Stateful
public class CalculatorBean implements CalculatorBeanRemote {

    private int _value;

    public void calculate(String operation, int value) {
        if (operation.equals("+")) {
            _value = _value + value;
            return;
        }
        if (operation.equals("-")) {
            _value = _value - value;
            return;
        }
    }

    public int getValue() {
        return _value;
    }

    public void clearIt() {
        _value = 0;
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
