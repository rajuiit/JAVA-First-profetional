
import java.awt.EventQueue;
import javax.swing.JFrame;


/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Sayed Mahmud Reza
 */
public class Main implements Runnable{

    /**
     * @param args the command line arguments
     */
    private final JFrame frame;
    public static void main(String[] args) {
        frmSplash frmSplash = new frmSplash(3000);
        EventQueue.invokeLater(new Main(new HomePage()));
        
       
        // TODO code application logic here
    }

    private Main(JFrame frm) {
        this.frame = frm;
    }

    @Override
    public void run() {
      frame.setVisible(true);
    }
}
