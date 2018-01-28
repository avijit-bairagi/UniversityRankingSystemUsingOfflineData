package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DATABASE_CONNECTION {
    static  Connection con= null;
    public static Connection get_connection(){
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "TAMA", "12345");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return con;
    }
}
