<%@page contentType="text/html" pageEncoding="WINDOWS-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=WINDOWS-1252">
        <title>Alteração de Aluno</title>
    </head>
    <body>
        <c:import url="cabecalho.jsp"/>
        <hr>
        <br><br>
        <sql:update dataSource="${ds}">
            update aluno set matricula=?,nome=?,endereco=?,telefone=?
            where id =?
            <sql:param value="${param.matricula}" />
            <sql:param value="${param.nome}" />
            <sql:param value="${param.endereco}" />
            <sql:param value="${param.telefone}" />
            <sql:param value="${param.id}" />
        </sql:update> 
    <center> <h2>${param.nome} Alterado com Sucesso !!!</h2> </center>
    <hr> 
    <center><a href="listaAlunos.jsp">voltar</a></center>
        <c:import url="rodape.jsp"/>   
</body>
</html>
