<html>
<?php
include("map_queries.php");
?>

<head>


<link rel="stylesheet" href="main.css">


</head>
<body>
<table  cellspacing="3" width="100%">
<tbody>

<tr>
<td valign="top"><center>    
<H3> 
<font color="#393b3c" > Consulta de Pron&oacute;sticos</font> <br> 
</H3>
       <form ACTION="contmapa.php" name='templateform' method="post">
<!-- <H4> -->
D&iacute;a: <select name="dia">
<?php 
$fecha_parts =explode("/", $fecha);
    for ($i = 1; $i <=  31; $i++) 
        {
            $selected=" ";
            if($i== intval($fecha_parts[0]))
            {
                $selected="selected";
            }
            echo "<option value='".sprintf("%02d", $i)."' ".$selected.">".$i."</option>";	
        }

 	?>	

</select>

Mes: <select name="mes">
<?php 
$fecha_parts =explode("/", $fecha);
    for ($i = 1; $i <= 12; $i++) 
        {
            $meses=["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"];
            $selected=" ";
            if($i== intval($fecha_parts[1]))
            {
                $selected="selected";
            }
            echo "<option value='".sprintf("%02d", $i)."' ".$selected.">".$meses[$i-1]."</option>";	
        }

 	?>
</select>

<?php
$today = new DateTime();
$year = $today->format("Y");
echo 'A&ntilde;o: <select name="ano">';
$firts_y=2016;
for($i=$firts_y; $i <=$year; $i++)
{
     $selected=" ";
     if($current_y== $i)
            {
                $selected="selected";
            }
	echo "<option value='".$i."' ".$selected.">".$i."</option>";
}
echo '</select>';
?>



<!--</H4>-->
<input type="submit" value="Ver" name="enviar" />

<input type="submit" value="Ver actual" name="actual" />
</form> 
</center>
</td>
</tr>
</tbody></table>

<HR>
<table  cellspacing="0" width="100%">
				<tbody><tr>
					<td valign="middle"><center>    
        
       
        
        
       <img NAME="animation" src="<?php echo $ruta_completa; ?>"  alt="<?php echo $ProductName; ?>" style="max-width:75%;max-height:78%;display: block;margin-left: auto; margin-right: auto " /> 
       <br>
       <HR>       
    
          
    </center>
</td>
				</tr>
</tbody></table>

</body>
</html>
