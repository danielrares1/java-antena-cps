/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.gov.sp.cps.antena.conexao;

import java.sql.*;
import java.util.ArrayList;

/**
 *
 * @author julio.pereira
 */
public class Usuario {
    private int id;
    private String nome;
    private String sobrenome;

    public static ArrayList<Usuario>getUser()throws Exception{
        
        ArrayList<Usuario>list = new ArrayList<>();
        Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://inova-cps-antena-dev.ccc21fcaixwg.sa-east-1.rds.amazonaws.com:5432/InovaDB";
        String user = "postgres", pass = "Inova-20";
        Connection conn = DriverManager.getConnection(url, user, pass);
        Statement userStmt = conn.createStatement();
        String SQL = "SELECT id_geral, nome, sobrenome FROM parceiros WHERE id_geral = 1";
        ResultSet userRs = userStmt.executeQuery(SQL);
        
        while (userRs.next()){
            int id = userRs.getInt("id_geral");
            String nome = userRs.getString("nome");
            String sobrenome = userRs.getString("sobrenome");                 
            Usuario u = new Usuario (id, nome, sobrenome);
            list.add(u);
        }
        
        userStmt.close();
        conn.close();
        return list;
    }

    public Usuario(int id, String nome, String sobrenome) {
        this.id = id;
        this.nome = nome;
        this.sobrenome = sobrenome;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSobrenome() {
        return sobrenome;
    }

    public void setSobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

}
