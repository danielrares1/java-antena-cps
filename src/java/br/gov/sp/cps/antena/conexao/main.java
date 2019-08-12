/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.cps.antena.conexao;

/**
 *
 * @author julio.pereira
 */
import java.sql.SQLException;
 
import br.gov.sp.cps.antena.conexao.db_user.DbContract;
import java.sql.ResultSet;
 
public class main {
 
    public static void main(String[] args) throws SQLException {
         
        postgres_helper client = new postgres_helper(
                DbContract.HOST, 
                DbContract.DB_NAME,
                DbContract.USERNAME,
                DbContract.PASSWORD);
         
        try {
            if (client.connect()) {
                System.out.println("DB conectado");
            }
             
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        ResultSet rs = client.execQuery("SELECT id_geral, nivel, nome, sobrenome FROM parceiros order by id_geral");
 
        while(rs.next()) {
            System.out.printf("%d\t%s\t%s\t%s\n", 
            rs.getInt(1),
            rs.getString(2),
            rs.getString(3),
            rs.getString(4));
        }
    }

}