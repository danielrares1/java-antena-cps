/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teste;


import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
/**
 *
 * @author daniel.rares
 */
public class conTeste {
    public static void main(String[] args) {
        String driver = "org.postgresql.Driver";
    String url = "jdbc:postgresql://inova-cps-antena-dev.ccc21fcaixwg.sa-east-1.rds.amazonaws.com:5432/InovaDB";
    String usuario = "postgres";
    String senha = "Inova-20";
    
    Connection conexao;
    Statement statement;
    ResultSet resultset;
    
    boolean result = true;

            try{
                Class.forName(driver);
                conexao = DriverManager.getConnection(url, usuario, senha);
                JOptionPane.showMessageDialog(null, "Conexão estabelecida");
            }
            catch (ClassNotFoundException Driver){
                JOptionPane.showMessageDialog(null, "Driver não localizado!\nERRO: " + Driver);
                result = false;
            }
            catch (SQLException Fonte){
                JOptionPane.showMessageDialog(null, "Fonte de dados não localizada!\nERRO: " + Fonte);
                result = false;
            }

        JOptionPane.showMessageDialog(null, result);
        
    }
}

