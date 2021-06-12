<!DOCTYPE html>
<html lang="es">

<body>
    <?php require 'partials/header.php'?>
    <div class="row">
            <h1>Su Robot</h1>
    </div>

    <?php
        

        $user = "root";
        $pass = "R0b0t1cs!";
        
        $connection = mysqli_connect('mysql', $user, $pass, 'pedidos');
        #Si lo hacemos con POST, en la URL no se muestra nada, si lo hacemos con GET, en la URL se muestran los datos
        $nombre = $_POST['nombre'];
        $numero = $_POST['numero'];



        $sql = "INSERT INTO robots (nombre, numero) VALUES ('$nombre','$numero')";
        $ejecutarsql = mysqli_query($connection,$sql);


        echo ''.$numero.' unidades de su robot '.$nombre.' han sido creadas'; 


    ?>
</body>
</html>

