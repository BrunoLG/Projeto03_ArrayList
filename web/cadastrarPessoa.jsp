<%-- 
    Document   : cadastrarPessoa
    Created on : 17/10/2018, 22:03:11
    Author     : bruno
--%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pessoas - Cadastrar</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <body class="bg-light">
        <div class="container">
            <div class="row">
                <div class="col-12 text-center my-5">
                    <h1 class="display-3">Cadastro de Pessoa</h1>           
                </div>
            </div>
            <div class="row">
                <div class="col-6 my-3">
                    <h2>Preencha o Formulário</h2>
                    <%
                        if(request.getParameter("cadastrar") != null){
                            String nome = request.getParameter("nome");
                            String cpf = request.getParameter("cpf");
                            String email = request.getParameter("email");
                            String telefone = request.getParameter("telefone");

                            Pessoa p = new Pessoa();
                            p.setDados(nome, cpf, email, telefone);
                            Db.getPessoas().add(p);
                            response.sendRedirect("listaPessoa.jsp");
                        }
                    %>
                    <form method="get" class="my-3">
                        <div class="form-group">
                            <label>Nome: </label>
                            <input type="text" class="form-control" name="nome" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Cpf: </label>
                            <input type="text" class="form-control" name="cpf" required>
                        </div>
                        
                        <div class="form-group">
                            <label>E-mail: </label>
                            <input type="email" class="form-control" name="email" required>
                        </div>
                        
                        <div class="form-group">
                            <label>Telefone: </label>
                            <input type="text" class="form-control" name="telefone" required>
                        </div>
                        <center> 
                            <input class="btn btn-primary mb-4" type="submit" value="Cadastrar" name="cadastrar"/>
                            <a class="btn btn-secondary mb-4" href="index.jsp" role="button">Voltar</a>
                        </center>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
