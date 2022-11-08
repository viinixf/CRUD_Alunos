<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script>
            if (confirm("Tem certeza que deseja excluir ?")) {
                window.location = "excluiAluno.jsp?id=${param.id}";
            } else { 
                window.location = "listaAlunos.jsp";
            }
        </script>
    </body>
</html>
