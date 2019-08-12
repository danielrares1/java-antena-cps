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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class postgres_helper {
 
    private Connection conn;
    private String host;
    private String dbName;
    private String user;
    private String pass;
     
    //we don't like this constructor
    protected postgres_helper() {}
     
    public postgres_helper(String host, String dbName, String user, String pass) {
        this.host = host;
        this.dbName = dbName;
        this.user = user;
        this.pass = pass;
    }
     
    public boolean connect() throws SQLException, ClassNotFoundException {
        if (host.isEmpty() || dbName.isEmpty() || user.isEmpty() || pass.isEmpty()) {
            throw new SQLException("Faltando credenciais do banco.");
        }
         
        Class.forName("org.postgresql.Driver");
        this.conn = DriverManager.getConnection(
                this.host + this.dbName,
                this.user, this.pass);
        return true;
    }
    
    public ResultSet execQuery(String query) throws SQLException {
        return this.conn.createStatement().executeQuery(query);
    }
}