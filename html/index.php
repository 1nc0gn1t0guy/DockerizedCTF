<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Robots</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
   
        <?php require 'partials/header.php'?>

    <div class="center">
        <div class="row">
            <h1>Robots</h1>
        </div>
        <form action="pedidorobot.php" method="POST">
            <div class="txt_field">
                <label>Nombre del Robot</label>
                <span></span>
                <input name="nombre" type="text" required>
                <label>Número de robots</label>
                
                <input name="numero" type="number" min="1" required>
                
            </div>
            <input type="submit" value="Crear"></button>
        </form>


        <h1>¡Intenta loggearte!</h1>
        <form method ="POST" action="login.php" name="signin-form">
                <div class="txt_field">
                    <label>Nombre de usuario</label>
                    <input type="text" name="username" required />
                    <label>Contraseña</label>
                    <input type="password" name="password" />
                </div>
                <input type="submit" name="login" value="Entrar"></button>
        </form>
    </div>
</body>
</html>
