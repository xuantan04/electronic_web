package dao;

import java.sql.*;
import java.util.*;
import model.User;


public class UserDAO {
    public static Connection openConnection(){
        String driver = "com.mysql.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/httm";
        String user = "root";
        String password = "123456";
        Connection conn = null;
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, user, password);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
    
    public static boolean insertProfile(String email, String phone, String name, String password, String address){
        try (Connection c = openConnection()){
            String insert = "INSERT INTO profile VALUES (?, ? ,? ,? ,?)";
            PreparedStatement ps = c.prepareStatement(insert);
            ps.setString(1, email);
            ps.setString(2, name);
            ps.setString(3, password);
            ps.setString(4, phone);
            ps.setString(5, address);           
            ps.execute();
            return true;
        } catch(Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    
    private ArrayList<User> users; // Thêm thuộc tính users

    // ...

    public ArrayList<User> getUsers(){
        if (users == null) {
            users = new ArrayList<>();
            try(Connection c= openConnection()) {
                String select = "SELECT * FROM profile";
                PreparedStatement ps=c.prepareStatement(select);
                ResultSet rs = ps.executeQuery();
                while (rs.next()){
                    users.add(
                        new User(rs.getString("email"), rs.getString("name"), rs.getString("password"), rs.getString("phone"), rs.getString("address")
                    ));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return users;
    }
    
    public static boolean  login(String email, String password){
        boolean isLogin=false;
        String select= "select *from profile "+" where email = ? and password = ?";  
        try(Connection c= openConnection()) {
            PreparedStatement ps=c.prepareStatement(select);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs=ps.executeQuery();
            isLogin=rs.next();
            if(isLogin){
               return true;
            }
            else {
                return false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isLogin;
    }
    
    public static String  getName(String email){
        boolean isLogin=false;
        String select= "select name from profile "+" where email = ?";  
        try(Connection c= openConnection()) {
            PreparedStatement ps=c.prepareStatement(select);
            ps.setString(1, email);
            ResultSet rs=ps.executeQuery();
            isLogin=rs.next();
            return rs.getString("name");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }
    
}
    