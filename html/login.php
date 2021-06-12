<!DOCTYPE html>
<html lang="es">

<body>
    <?php require 'partials/header.php'?>
    <div class="row">
            <h1>PÁGINA EN MANTENIMIENTO</h1>
    </div>

    <?php 

    include "database.php";
      
    if (isset($_POST['username']) && isset($_POST['password'])) {
        
        $username = $_POST['username'];
        $pass = $_POST['password'];

        $sql = "SELECT * FROM users WHERE username='$username' AND password='$pass'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) === 1) {
            $row = mysqli_fetch_assoc($result);
            if ($row['username'] === $username && $row['password'] === $pass){
                echo "Hola " . $row['username'] . ", recuerda que tu contraseña es " . $row['password'] . ", no olvides cambiarla en 15 días. ";
                
            }else{
                echo "Te has equivocado con el usuario o la contraseña, prueba de nuevo!!!!!";
                
            }
            
        }else{
            echo "Te has equivocado con el usuario o la contraseña, prueba de nuevo!";
            while($row = mysqli_fetch_array($result)){
                echo "Hola " . $row['username'] . ", recuerda que tu contraseña es " . $row['password'] . ", no olvides cambiarla en 15 días. ";
            }
            
        }

    }else{
        header("Location: index.php");
        exit();
    }


?>

</body>
</html>