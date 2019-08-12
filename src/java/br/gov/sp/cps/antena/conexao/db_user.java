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
public class db_user {
    
    public interface DbContract {
    public static final String HOST = "jdbc:postgresql://inova-cps-antena-dev.ccc21fcaixwg.sa-east-1.rds.amazonaws.com:5432/";
    public static final String DB_NAME = "InovaDB";
    public static final String USERNAME = "postgres";
    public static final String PASSWORD = "Inova-20";
}
}
