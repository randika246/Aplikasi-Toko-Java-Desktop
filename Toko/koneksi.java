/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Toko;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Randika R Manihuruk
 */
public class koneksi {
    private static Connection koneksi;
    
    public static Connection getKoneksi(){
        if (koneksi == null){
            try{
                String url ="jdbc:mysql://localhost:3306/toko";
                String user="root";
                String password="";
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                koneksi = DriverManager.getConnection(url, user, password);
                System.out.println("Berhasil");
            }catch (Exception e){
                System.out.println("error");
            }
        }
        return koneksi;
    }
    public static void main(String args[]){
        getKoneksi();
    }
}
