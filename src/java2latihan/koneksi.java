/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package java2latihan;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author User
 */
public class koneksi {
 
    public Connection bukakoneksi(){
      Connection con=null;
      try{
          Class.forName("com.mysql.jdbc.Driver");
          con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/dbtoko","root","");
          System.out.println("Berhasil");
          return con;
          }
          catch (Exception e){
          System.out.println("Gagal");
          return null;
          }
    
    } 
    
   public static void main(String args[]){
   new koneksi().bukakoneksi();   
  }   
}
