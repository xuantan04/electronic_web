
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import java.sql.*;
import java.util.ArrayList;
import model.Sample;
/**
 *
 * @author lexua
 */
public class DAO {
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
    
    public static ArrayList<Sample> getAllSamples(){
        ArrayList<Sample> result = new ArrayList<>();
        try (Connection c = openConnection()){
            String select  = "select * from sample";
            PreparedStatement ps = c.prepareStatement(select);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                result.add(new Sample(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
    public static ArrayList<Sample> searchSamples(String strfind){
        ArrayList<Sample> result = new ArrayList<>();
        try (Connection c = openConnection()){
            String select  = "select * from sample where locate(?, content) > 0 ";
            PreparedStatement ps = c.prepareStatement(select);
            ps.setString(1, strfind);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                result.add(new Sample(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
    public static boolean deleteSample(int id) {
        try (Connection c = openConnection()){
            String select  = "delete from sample where id = ?";
            PreparedStatement ps = c.prepareStatement(select);
            
            ps.setInt(1, id);
            ps.execute();
            
            return true;
                        
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
        
    public static boolean addSample(Sample sample){
        
        try (Connection c = openConnection()){
            String select  = "INSERT INTO sample(name, content, summary, label) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = c.prepareStatement(select);
            ps.setString(1, sample.getName());
            ps.setString(2, sample.getContent());
            ps.setString(3, sample.getSummary());
            ps.setString(4, sample.getLabel());
            
            ps.execute();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    public static Sample getSample(int id) {
        try (Connection c = openConnection()){
            String select  = "select * from sample where id = ?";
            PreparedStatement ps = c.prepareStatement(select);
            
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            
           
            if(rs.next()) return new Sample(id, rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
                        
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    
    public static boolean updateSample(Sample sample){
        
        try (Connection c = openConnection()){
            String select  = "Update sample set name = ?, content = ?, summary = ?, label = ? where id = ?";
            PreparedStatement ps = c.prepareStatement(select);
            ps.setString(1, sample.getName());
            ps.setString(2, sample.getContent());
            ps.setString(3, sample.getSummary());
            ps.setString(4, sample.getLabel());
            ps.setInt(5, sample.getId());
            
            ps.execute();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
