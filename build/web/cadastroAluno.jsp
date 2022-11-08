<%@page contentType="text/html" pageEncoding="WINDOWS-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <title>Cadastro de Alunos</title>
    </head>
    <body>
        <c:import url="cabecalho.jsp"/>
        <h1>Cadastro de Alunos</h1>
        <hr>
        <br><br>
        <form method=post action=gravaAluno.jsp> 
            Matricula.: <input type=text name=matricula size=10><BR> 
            Nome......: <input type=text name=nome size=40><BR>
            Endereço.: <input type=text name=endereco size=40><BR>
            Telefone..: <input type=text name=telefone size=10>
            <p><input type=submit value="Gravar"> 
                <input type=reset value="Limpar"></p>
        </form> 
        <br><br>
        <hr> 
    <center><a class="btn btn-success" href="index.jsp">voltar</a></center>
        <c:import url="rodape.jsp"/>  
</body>
</html>
