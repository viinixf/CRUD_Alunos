<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <sql:setDataSource var="ds"
                           driver="org.apache.derby.jdbc.ClientDriver"
                           url="jdbc:derby://localhost:1527/academico22"
                           user="java2"
                           password="java2"
                           scope="session"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Cadastro de Alunos</title>
    </head>
    <body>
        <c:import url="cabecalho.jsp"/>
        <h1><center> Bem Vindo ao Sistema de Cadastro de alunos</center></h1>
        <hr>
        <br><br>
        <h2><center><a href="cadastroAluno.jsp">Cadastrar Aluno</a><br><br>
                <a href="listaAlunos.jsp">Alunos</a></center></h2>
        <br><br>
        <hr>
        <br><br>
        <c:import url="rodape.jsp"/>   
    </body>
</html>