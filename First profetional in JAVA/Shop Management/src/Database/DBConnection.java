package Database;


import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
    public static Connection getDBConnection() {
        Connection connection;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/reza", "root", "");
            return connection;
        } catch (Exception ex) {
            return null;
        }//try catch closed
    }//getDBConnection() closed
}//class closed
