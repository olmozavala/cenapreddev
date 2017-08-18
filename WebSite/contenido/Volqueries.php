<?php
session_start();
include("../connection.phtml"); 



if ($_SERVER['REQUEST_METHOD'] === 'GET') 
{
   $isproduct = isset($_GET['id']) ? $_GET['id'] : false;
   if($isproduct) 
    {
       $idproduct=$_GET['id'] ;
    } 
    else 
    { 
	$idproduct='niv';
    }
    $_SESSION['id'] =$idproduct;
}
else
{	
    $idproduct=$_SESSION['id'];
    $boton_enviar = $_POST["enviar"];
}
if (!$boton_enviar)
{
    $link = server_connection(); 	
    if ($link->connect_errno )
    {
	die('No puede conectarse al servidor: ' . $link->connect_error);
	
    }
    else
    {
    	$sql="SELECT codigo, nombre, descripcion, image, modelo  FROM j4_productos  WHERE codigo = '$idproduct';";           
		$consulta = $link->query($sql);
		if (!$consulta)
	        {			
			echo "<script> alert('El pronostico actual no existe')</script>";
		}
		else
		{
			$num_rows = $consulta->num_row;
			if ($num_rows == 1)
			{
				$row = $consulta->fetch_assoc(); 
				$ProductName=$row['nombre'];
				$Descrip=$row['descripcion'];
				$ImageNom=$row['descripcion'];
                $modelo=$row['modelo'];
                               
			}
			else
            {
			        echo "<script> alert('El pronostico actuala no existe 2')</script>";
			}
		}
	
	$link->close();

         $nFile=scandir("../productos/actuales/".$modelo); 
         $lastDirectory=$nFile[2];
 
          $ruta_actual = "../productos/actuales/".$modelo."/".$lastDirectory."/Hora_01/Altura_05/".$ProductName."/".$ImageNom."01_05_" ;
	  $nfiles = scandir("../productos/actuales/".$modelo."/".$lastDirectory."/Hora_01/Altura_05/".$ProductName);
	  $row_imagenes[0] = count($nfiles)-2;
     	
	$ruta_completa = $ruta_actual;
   }
}
else
{
    //Definiciones
    $ruta_primera_parte = "../productos/historicos/";
    $carpeta = $_POST["ano"] ."_". $_POST["mes"] ."_" . $_POST["dia"]."_00";

	$carpeta = $_POST["ano"] . $_POST["mes"] . $_POST["dia"]; 
	$dia_seleccionado = $_POST["dia"];
	$mes_seleccionado = $_POST["mes"];
	$ano_seleccionado = $_POST["ano"];
	$hora_seleccionada = $_POST["hora"];
    $altura_seleccionada= $_POST["altura"];
	
    
    $link = server_connection(); 	
    if (!$link) 
    {
	die('No puede conectarse al servidor: ' . $link->connect_error);
    }
    else
    {
	
		$consulta = $link->query("SELECT codigo, nombre, descripcion, image, modelo  FROM j4_productos  WHERE codigo = '$idproduct';");
		if (!$consulta) 
		{
			echo "<script> alert('El pronostico del $dia_seleccionado/$mes_seleccionado/$ano_seleccionado no existe')</script>";
		}
		else
                {
			$num_rows = $consulta->num_rows;
			if ($num_rows == 1)
               		{
              			$rows = $consulta->fetch_assoc();
                   	        $ProductName=$rows['nombre'];
                   	        $Descrip=$rows['descripcion'];
							$ImageNom=$rows['image'];   
				 			$modelo=$rows['modelo'];
                           
                  	        $ruta_segunda_parte =$ProductName;	
                   	        $ruta_historica = $ruta_primera_parte.$modelo."/".$carpeta."/".$ruta_segunda_parte;
                    		if (!file_exists($ruta_historica) && !is_dir($ruta_historica)) 
							{
								echo "<script> alert('la carpeta $ruta_historica no existe')</script>";
						 	}
                                else 
                                {
                                   $nFile=scandir($ruta_historica);
                                   $num_files = count($nFile)-2;
                                }
                    		$ruta_completa = $ruta_historica."/".$ImageNom;
                   		$row_imagenes[0]=$num_files;
           		 }
			 else
               		 {
				echo "<script> alert('El pronostico del $dia_seleccionado/$mes_seleccionado/$ano_seleccionado a las $hora_seleccionada horas no existe')</script>";
                         }
               }
        
	 $link->close();

   }
}


?>


