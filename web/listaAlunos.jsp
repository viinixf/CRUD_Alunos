<%-- 
    Document   : listaAlunos
    Created on : 07/11/2022, 20:25:44
    Author     : marci
--%>

<%@page contentType="text/html" pageEncoding="WINDOWS-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=WINDOWS-1252">

        <title>Exemplo JSTL com Banco de Dados </title>
    </head>
    <body>
        <c:import url="cabecalho.jsp"/>
    <center><h1>Relação de Alunos Linguagem de Programação IV</h1></center>
    <hr> 
    <sql:query var="ResultadoAlunos" dataSource="${ds}">
        select * from aluno
    </sql:query>
    <table border="1" align ="center">
        <tr>
            <th>Matricula</th>
            <th>Nome</th>
            <th>Endereco</th>
            <th>Telefone</th>
            <th>Exclui</th>
            <th>Altera</th>
        </tr> 
        <c:forEach var="listaAlunos" items="${ResultadoAlunos.rows}">
            <tr>
                <!--A tag out é responsável por gerar uma String de saída na tela -->
                <td><c:out value="${listaAlunos.matricula}"/></td>
                <td><c:out value="${listaAlunos.nome}"/></td>
                <td><c:out value="${listaAlunos.endereco}"/></td>
                <td><c:out value="${listaAlunos.telefone}"/></td>
                <td align="center">
                    <a href="confirmaExclusao.jsp?id=${listaAlunos.id}">
                        <img src="imagens/x.jpg" ></a> </td>
                <td align="center">
                    <a href="alteraAluno.jsp?id=${listaAlunos.id}">
                        <img src="imagens/ticado.jpg"></a></td>
            </tr>
        </c:forEach>
    </table>
    <hr> 
    <center><a href="index.jsp">voltar</a></center>
        <c:import url="rodape.jsp"/>   
</body>
</html>
