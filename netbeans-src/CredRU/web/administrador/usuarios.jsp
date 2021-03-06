<%-- 
    Document   : usuarios
    Created on : 22/06/2018, 22:00:21
    Author     : Soriano
--%>


<%@page import="br.com.credru.model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="br.com.credru.controller.Visualizar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>CRED RU - ADM - Historico </title>

        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/bootstrap.min.css">

        <!-- Custom styles for this template -->
        <link rel="stylesheet" type="text/css" href="assets/credru/css/index.css">

    </head>

    <body>

        <!-- Menu começa aqui-->
        <jsp:include page="../include/header.jsp" />
        <!-- menu acaba aqui -->

        <!-- Page Content -->
        <div class="container">
            <br><br>


            <!-- Marketing Icons Section -->
            <div class="row">


                <div class="col-lg-12 mb-3">
                    <div class="card h-100">
                        <h4 class="card-header">Usuários</h4>
                        <div class="card-body">

                            <!-- menu operações-->
                            
                         <table class="table">
                                <tr>
                                    <th scope="col">Nome</th>
                                    <th scope="col">Nome de usuário</th>
                                    <th scope="col">Quantidade de Créditos</th>
                                    <th scope="col">Senha</th>
                                </tr>
                            <%
                                List<Usuario> usuarios = Visualizar.getUsuario();
                                if(usuarios != null){
                                    for(Usuario u : usuarios){
                                    %>
                                        <tr>
                                            <td><%= u.getNome() %></td>
                                            <td><%= u.getUserName() %></td>
                                            <td><%= u.getCredito() %></td>
                                            <td><%= u.getSenha() %></td>
                                        </tr>
                                    <%
                                        
                                    }
                                }
                            %>
                            </table>

                            <!-- fim menu oprações-->


                        </div>

                    </div>
                </div>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->

        <jsp:include page="../include/footer.jsp" />

        <!-- Bootstrap core JavaScript -->
        <script src="assets/credru/jquery/jquery.min.js"></script>

        <script src="assets/credru/js/bootstrap.bundle.min.js"></script>

    </body>

</html>
