<%@page import="clases.Banco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Bancos</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">Lista de Bancos</h1>
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr>
                    <th>Nombre del Banco</th>
                    <th>Número de Cuenta</th>
                    <th>Saldo</th>
                </tr>
            </thead>
            <tbody>
                <%
                    java.util.List<Banco> bancoList = (java.util.List<Banco>) session.getAttribute("bancoList");
                    if (bancoList != null) {
                        bancoList.sort((b1, b2) -> b1.obtenerNombre().compareTo(b2.obtenerNombre()));
                        for (Banco banco : bancoList) {
                            out.println("<tr>");
                            out.println("<td>" + banco.obtenerNombre() + "</td>");
                            out.println("<td>" + banco.numCuenta() + "</td>");
                            out.println("<td>$" + banco.obtenerSaldo() + "</td>");
                            out.println("</tr>");
                        }
                    }
                %>
            </tbody>
        </table>
        <a href="agregarbanco.jsp" class="btn btn-primary mt-3">Agregar otra cuenta</a>
        <a href="depositoform.jsp" class="btn btn-success mt-3">Agregar Saldo a una Cuenta</a>
        <a href="retiroform.jsp" class="btn btn-danger mt-3">Retirar Saldo de una Cuenta</a>
    </div>

    <!-- Bootstrap JS, Popper.js, y jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
