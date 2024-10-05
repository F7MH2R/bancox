<%@page import="clases.Banco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Procesar Cuenta</title>
</head>
<body>
<%
    String nombre = request.getParameter("nombre");
    String numCuenta = request.getParameter("numCuenta");
    double saldo = Double.parseDouble(request.getParameter("saldo"));

    if (session.getAttribute("bancoList") == null) {
        session.setAttribute("bancoList", new java.util.ArrayList<Banco>());
    }

    java.util.List<Banco> bancoList = (java.util.List<Banco>) session.getAttribute("bancoList");
    Banco nuevoBanco = new Banco(nombre, numCuenta, saldo);
    bancoList.add(nuevoBanco);

    response.sendRedirect("verBancos.jsp");
%>
</body>
</html>
