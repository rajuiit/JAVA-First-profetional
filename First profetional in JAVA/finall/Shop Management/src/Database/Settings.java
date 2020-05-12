package Database;



import java.awt.Dimension;
import java.awt.Toolkit;
import java.sql.Connection;
import java.sql.DriverManager;

public class Settings {
    public static Dimension getScreenSize(){
        Dimension d=Toolkit.getDefaultToolkit().getScreenSize();
        return d;   
    }//getScreenSize() closed
    
    public static Connection getDBConnection(){
        Connection con;
        try{
          Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/reza", "root", "");
            
            return con;
        }catch(Exception ex){
            return null;
        }
    }
}//class closed
