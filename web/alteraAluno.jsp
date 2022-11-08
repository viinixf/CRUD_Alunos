<%@page contentType="text/html" pageEncoding="WINDOWS-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=WINDOWS-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <c:import url="cabecalho.jsp"/>
        <hr>
        <br><br>
        <sql:query var="ResultadoAlunos" dataSource="${ds}">
            select * from aluno where id =?
            <sql:param value="${param.id}" />
        </sql:query>
        <c:forEach var="aluno" items="${ResultadoAlunos.rows}">
            <h1>Alteração Dados do Alunos</h1>
            <hr>
            <br><br>
            <form method=post action="confirmaAlteracao.jsp"> 
                <input type="hidden" name="id" value="${param.id}">
                Matricula.: <input type="text" name=matricula  
                                   value="${aluno.matricula}" size=10><BR> 
                Nome......: <input type="text" value="${aluno.nome}" name=nome size=40><BR>
                Endereço.: <input type="text" value="${aluno.endereco}" name=endereco 
                                  size=40><BR>
                Telefone..: <input type="text" value="${aluno.telefone}" name=telefone
                                   size=10>
                <p><input type=submit value="Alterar"></p> 
            </form> 
        </c:forEach>
        <hr> 
    <center><a href="listaAlunos.jsp">voltar</a></center>
        <c:import url="rodape.jsp"/>  
</body>
</html>
