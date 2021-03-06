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
                        <h4 class="card-header">Painel de Controle</h4>
                        <div class="card-body">

                            <!-- menu operações-->


                            <a href="Administrador?comando=VendasRealizadas"><p>Vendas Realizadas</p></a>
                            <a href="Administrador?comando=UsuariosCadastrados"><p>Usuários cadastrados</p></a>
                            <a href="Administrador?comando=DebitosRealizados"><p>Debitos Realizados</p></a>

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
