<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto 03 - Grupo 01</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <body class="bg-light">
        <div class="container">
            <div class="jumbotron jumbotron-fluid text-center">
                <h1>Apresentação da Equipe</h1><br>
                <h2>Bruno de Lima Gomes e Eduardo Ribas</h2>
            </div>
            
            <div class="row mb-5">
                <div class="col-sm-4">
                    <div class="card">   
                        <div class="card-body">
                            <h4 class="card-title">Pessoas</h4>                        
                            <p class="card-text"> 
                                <a class="btn btn-secondary" href="cadastrarPessoa.jsp" role="button">Cadastrar</a>
                                <a class="btn btn-secondary" href="listaPessoa.jsp" role="button">Lista</a>
                            </p>
                        </div>
                    </div>
                </div>
                
                <div class="col-sm-4">
                    <div class="card">    
                        <div class="card-body">
                            <h4 class="card-title">Empresas</h4>                        
                            <p class="card-text"> 
                                <a class="btn btn-secondary" href="cadastrarEmpresa.jsp" role="button">Cadastrar</a>
                                <a class="btn btn-secondary" href="listaEmpresa.jsp" role="button">Lista</a>
                            </p>
                        </div>   
                    </div>

                </div>
                <div class="col-sm-4">
                    <div class="card">                 

                        <div class="card-body">
                            <h4 class="card-title">Veículos</h4>                        
                            <p class="card-text"> 
                                <a class="btn btn-secondary" href="cadastrarVeiculo.jsp" role="button">Cadastrar</a>
                                <a class="btn btn-secondary" href="listaVeiculo.jsp" role="button">Lista</a>
                            </p>
                        </div>   
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
