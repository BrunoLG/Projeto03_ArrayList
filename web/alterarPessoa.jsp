<%-- 
    Document   : alterarPessoa
    Created on : 17/10/2018, 22:10:35
    Author     : bruno
--%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pessoa - Alterar</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <%  int i = Integer.parseInt(request.getParameter("i")); 
        Pessoa p = Db.getPessoas().get(i); 
    %>
    <body class="bg-light">
        <% if(request.getParameter("alterar") != null){
                String nome = request.getParameter("nome");
                String cpf = request.getParameter("cpf");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                                         
                
                p.setDados(nome, cpf, email, telefone);
                Db.getPessoas().set(i, p);
                response.sendRedirect("listaPessoa.jsp");
        } %>
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
                            <label>Indice: </label>
                            <input type="text" class="form-control" name="i" value="<%= i %>" readonly>
                        </div>
                        <div class="form-group">
                            <label>Nome: </label>
                            <input type="text" class="form-control" name="nome" value="<%= p.getNome() %>" required>
                        </div>
                        <div class="form-group">
                            <label>CPF: </label>
                            <input type="text" class="form-control" name="cpf" value="<%= p.getCpf() %>" required>
                        </div>
                        <div class="form-group">
                            <label>E-mail: </label>
                            <input type="text" class="form-control" name="email" value="<%= p.getEmail() %>" required>
                        </div>
                        <div class="form-group">
                            <label>Telefone: </label>
                            <input type="text" class="form-control" name="telefone" value="<%= p.getTelefone() %>" required>
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
