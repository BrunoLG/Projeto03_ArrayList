<%-- 
    Document   : alterarPessoa
    Created on : 17/10/2018, 22:10:35
    Author     : bruno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pessoa - Alterar</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <body class="bg-light">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center my-5">
                    <h1 class="display-3">Alterar cadastro de Pessoa</h1>           
                </div>
            </div>
            <div class="row">
                <div class="col-6 my-3">
                    <h2>Preencha o Formulário</h2>
                    <form method="get" class="my-3">
                        <div class="form-group">
                            <label>Nome: </label>
                            <input type="text" class="form-control" name="nome" placeholder="Nome" required>
                        </div>
                        <center> 
                            <input class="btn btn-primary mb-4" type="submit" value="Alterar" name="alterar"/>
                            <a class="btn btn-secondary mb-4" href="listaPessoa.jsp" role="button">Voltar</a>
                        </center>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
