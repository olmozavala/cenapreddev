<?php
if ($_SERVER['REQUEST_METHOD'] === 'GET') 
{
   $isproduct = isset($_GET['id']) ? $_GET['id'] : false;
   if($isproduct) 
    {
       $idproduct=$_GET['id'] ;
    } 
include("../connection.phtml"); 

$link = server_connection(); 

if ($link->connect_errno ) {

	die('No puede conectarse al servidor: ' . $link->connect_error);
}
else{

        $queryString= (string)  "select id_station, name, lat , lon from j4_stations";       	
          $sth = $link->query($queryString);	    
       
    }

if (!$sth) {
    echo 'No se pudo ejecutar la consulta: ';
    exit;
}

 
$Station =array();
while($row = $sth->fetch_assoc())
{  
	$Strinrow;
	$Strinrow="{\"id_station\":\"".$row['id_station']."\",\"nombre\":\"".$row['name']."\",\"latitud\":\"".$row['lat']."\",\"longitud\":\"".$row['lon']."\"}";
 array_push($Station,$Strinrow);

}

$StringD="[";

$length= count($Station)-1;

for ($i = 0; $i <= $length-1; $i++) {
   $StringD= $StringD.$Station[$i].",";
}
$StringD=$StringD.$Station[$length]."]";

header('Content-type: application/json');
 
 echo $StringD;


}


?>
