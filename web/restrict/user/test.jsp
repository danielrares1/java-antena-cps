<%-- 
    Document   : test
    Created on : 15/08/2019, 16:33:33
    Author     : daniel.rares
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<html>
  <head>
    <title>DB Test</title>
  </head>
  <body>
      
<sql:query var="rs" dataSource="jdbc/AntenaCPS">
select id_geral, nome, sobrenome from parceiros
</sql:query>

  <h2>Results</h2>

<c:forEach var="row" items="${rs.rows}">
    <c:out value="${row.nome}"/><br/>
</c:forEach>

  </body>
</html>