<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Exclusão de Aluno</title>
</head>
<body>
    <c:import url="cabecalho.jsp"/>
    <hr>
    <br><br>
    <sql:update dataSource="${ds}">
        delete from aluno where id=?
      <sql:param value="${param.id}" />
    </sql:update> 
    <center><h1>Exclusão Efetuada com Exito!</h1></center>
    <br><br>
 <hr> 
    <center><a href="listaAlunos.jsp">voltar</a></center>
        <c:import url="rodape.jsp"/>   
</body>
</html>
