<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Retirar Saldo de una Cuenta</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">Retirar Saldo de una Cuenta Bancaria</h1>
        <form method="post" action="procesarRetiro.jsp">
            <div class="form-group">
                <label for="numCuenta">Número de Cuenta:</label>
                <input type="text" class="form-control" id="numCuenta" name="numCuenta" required>
            </div>
            <div class="form-group">
                <label for="monto">Monto a Retirar:</label>
                <input type="number" class="form-control" id="monto" name="monto" required>
            </div>
            <button type="submit" class="btn btn-danger">Retirar Saldo</button>
        </form>
    </div>

    <!-- Bootstrap JS, Popper.js, y jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
