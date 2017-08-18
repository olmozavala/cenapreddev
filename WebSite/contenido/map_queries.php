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
	$idproduct='AGU';
    }

 $_SESSION['id'] =$idproduct;
  $isType = isset($_GET['tipo']) ? $_GET['tipo'] : false;
   if( $isType) 
    {
       $isType=$_GET['tipo'] ;
    } 
    else 
    { 
	 $isType='meteo';
    }

    $_SESSION['tipo'] =$isType;
}
else
{	
    $idproduct=$_SESSION['id'];
	$isType=$_SESSION['tipo'];
    $boton_enviar = $_POST["enviar"];
}
if (!$boton_enviar)
{
    $link = server_connection(); 	
    if ($link->connect_errno)
    {
	die('No puede conectarse al servidor: ' . mysql_error());
	
    }
    else
    {

       		$sql="SELECT id_station , name, description, image, modelo, dominio  FROM j4_station_products WHERE id_station='$idproduct' and  type = '$isType';";           
		$consulta = $link->query($sql);
		if (!$consulta)
	        {			
			echo "<script> alert('El pronostico actual no existe')</script>";
		}
		else
		{
			$num_rows =$consulta->num_row;
			if ($num_rows == 1)
			{
				$row = $consulta->fetch_assoc(); 
				$ProductName=$row['name'];
				$Descrip=$row['description'];
				$ImageNom=$row['image'];
                $modelo=$row['modelo'];
                $dominio=$row['dominio'];
			}
			else
                        {
			        echo "<script> alert('El pronostico actuala no existe 2')</script>";
			}
		}
	
	$link->close();


         $nFile=scandir("../productos/actuales/".$modelo."/".$ProductName."/".$dominio); 
         $lastDirectory=$nFile[2];
     if($dominio){ 
        	$ruta_actual ="../productos/actuales/".$modelo."/".$ProductName."/".$dominio."/".$lastDirectory."/".$ImageNom ;
			$nfiles = scandir("../productos/actuales/".$modelo."/".$ProductName."/".$dominio."/".$lastDirectory);
			$row_imagenes[0] = count($nfiles)-2;
     	}
  	 	else{
		   $ruta_actual = "../productos/actuales/".$modelo."/".$ProductName."/".$lastDirectory."/".$ImageNom ;
		    $nfiles = scandir("../productos/actuales/".$modelo."/".$ProductName."/".$lastDirectory);
			$row_imagenes[0] = count($nfiles)-2;
		}
	$ruta_completa = $ruta_actual;
   }
}
else
{
    //Definiciones
    $ruta_primera_parte = "../productos/historicos/";
    $carpeta = $_POST["ano"] ."_". $_POST["mes"] ."_" . $_POST["dia"]."_00"; 
	$dia_seleccionado=$_POST["dia"];
	$mes_seleccionado=$_POST["mes"];
	$ano_seleccionado=$_POST["ano"];
	
    
    $link = server_connection(); 	
    if (!$link) 
    {
	die('No puede conectarse al servidor: ' . mysql_error());
    }
    else
    {
	$db_selected = mysql_select_db('operativo_admin', $link);
	if (!$db_selected)
        {
		die ('No puede usar la base de datos: ' . mysql_error());
	}
	else
        {
		$consulta = mysql_query("SELECT id_station , name, description, image, modelo, dominio  FROM j4_station_products WHERE id_station='$idproduct' and  type = '$isType';");
		if (!$consulta) 
		{
			echo "<script> alert('El pronostico del $dia_seleccionado/$mes_seleccionado/$ano_seleccionado no existe')</script>";
		}
		else
                {
			$num_rows = mysql_num_rows($consulta);
			if ($num_rows == 1)
               		{
              			$rows = $consulta->fetch_assoc();
                   	        $ProductName=$rows['name'];
                   	        $Descrip=$rows['description'];
							$ImageNom=$rows['image'];   
				 			$modelo=$rows['modelo'];
                            $dominio=$rows['dominio'];                
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
        }
	$link->close();


   }
}


?>

