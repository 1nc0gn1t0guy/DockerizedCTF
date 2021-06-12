<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Robots</title>
</head>

<body>

    <?php require 'partials/header.php'?>

    <div class="row">
            <h1>Robots</h1>
    </div>
    <form action="pedidorobot.php" method="POST">
        <label for="nombre">Nombre del Robot</label>
        <input name="nombre" type="text" placeholder="Introduzca el nombre del robot">
        <label for="numero">Número de robots</label>
        <input name="numero" type="number" min="0" placehoder="¿Cuántos robots quiere?">
        <button type="submit">Enviar</button>
    </form>


    <h1>¿Tienes una cuenta? ¡Intenta loggearte!</h1>
    <form method ="POST" action="login.php" name="signin-form">
            <div class="form-element">
                <label>Nombre de usuario</label>
                <input type="text" name="username" required />
            </div>
            <div class="form-element">
                <label>Contraseña</label>
                <input type="password" name="password" />
            </div>
            <button type="submit" name="login" value="login">Entrar</button>
    </form>

</body>
</html>
