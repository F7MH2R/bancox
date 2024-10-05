<%@page import="clases.Banco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Procesar Retiro</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%
    String numCuenta = request.getParameter("numCuenta");
    double monto = Double.parseDouble(request.getParameter("monto"));

    if (session.getAttribute("bancoList") != null) {
        java.util.List<Banco> bancoList = (java.util.List<Banco>) session.getAttribute("bancoList");
        for (Banco banco : bancoList) {
            if (banco.numCuenta().equals(numCuenta)) {
                banco.retirar(monto);
                break;
            }
        }
    }

    response.sendRedirect("verBancos.jsp");
%>
</body>
</html>
