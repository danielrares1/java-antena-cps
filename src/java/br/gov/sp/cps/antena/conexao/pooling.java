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

import java.util.*;
import java.sql.*;

class pooling
{

 String databaseUrl = "jdbc:postgresql://inova-cps-antena-dev.ccc21fcaixwg.sa-east-1.rds.amazonaws.com:5432/";
 String userName = "postgres";
 String password = "Inova-20";

 Vector connectionPool = new Vector();

 public pooling()
 {
  initialize();
 }

 public pooling(
  //String databaseName,
  String databaseUrl,
  String userName,
  String password
  )
 {
  this.databaseUrl = databaseUrl;
  this.userName = userName;
  this.password = password;
  initialize();
 }

 private void initialize()
 {
  //Here we can initialize all the information that we need
  initializeConnectionPool();
 }

 private void initializeConnectionPool()
 {
  while(!checkIfConnectionPoolIsFull())
  {
   System.out.println("Connection Pool is NOT full. Proceeding with adding new connections");
   //Adding new connection instance until the pool is full
   connectionPool.addElement(createNewConnectionForPool());
  }
  System.out.println("Connection Pool is full.");
 }

 private synchronized boolean checkIfConnectionPoolIsFull()
 {
  final int MAX_POOL_SIZE = 5;

  //Check if the pool size
  if(connectionPool.size() < 5)
  {
   return false;
  }

  return true;
 }

 //Creating a connection
 private Connection createNewConnectionForPool()
 {
  Connection connection = null;

  try
  {
   Class.forName("org.postgresql.Driver");
   connection = DriverManager.getConnection(databaseUrl, userName, password);
   System.out.println("Connection: "+connection);
  }
  catch(SQLException sqle)
  {
   System.err.println("SQLException: "+sqle);
   return null;
  }
  catch(ClassNotFoundException cnfe)
  {
   System.err.println("ClassNotFoundException: "+cnfe);
   return null;
  }

  return connection;
 }

 public synchronized Connection getConnectionFromPool()
 {
  Connection connection = null;

  //Check if there is a connection available. There are times when all the connections in the pool may be used up
  if(connectionPool.size() > 0)
  {
   connection = (Connection) connectionPool.firstElement();
   connectionPool.removeElementAt(0);
  }
  //Giving away the connection from the connection pool
  return connection;
 }

 public synchronized void returnConnectionToPool(Connection connection)
 {
  //Adding the connection from the client back to the connection pool
  connectionPool.addElement(connection);
 }

 public static void main(String args[])
 {
  pooling ConnectionPoolManager = new pooling();
 }

}