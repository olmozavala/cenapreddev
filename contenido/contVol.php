<html>
<?php
include("Volqueries.php");
?>
<script language="JavaScript"> 
image_name = "<?php echo $ruta_completa; ?>";
image_type = "jpg";                 	//"gif" or "jpg" or whatever your browser can display
image_name_increment = 1;           	//Indica el aumento en el nombre de la imagen

first_image_name = 0;			//Representa el nombre de la primer imagen
first_image = 0;                    	//first image number
last_image = "<?php echo $row_imagenes[0]-1; ?>";			//Representa el numero total de imagenes-1. Esto es, si last_image es 4 entonces en total son 5 imagenes
speed_text = 0;
var inicioPlayfwd = false;		//Controla la animacion si esta en play o en stop
var inicioPlayBkw = false;		//Controla la animacion cuando esta en reversa

   //!!! the size is very important - if incorrect, browser tries to
   //!!! resize the images and slows down significantly
animation_height = 680;              //height of the images in the animation
animation_width = 480;               //width of the images in the animation
//
//=== THE CODE STARTS HERE - no need to change anything below ===
//=== global variables ====
theImages = new Array();
normal_delay = 1000;
delay = normal_delay;  //delay between frames in 1/100 seconds
delay_step = 10;
delay_max = 30000;
delay_min = 1;
current_image = first_image;     //number of the current image
timeID = null;
status = 1;            // 0-stopped, 1-playing
play_mode = 1;         // 0-normal, 1-loop, 2-swing
size_valid = 0;


//===> makes sure the first image number is not bigger than the last image number
if (first_image > last_image)
{
   var help = last_image;
   last_image = first_image;
   first_image = help;
};

//===> displays image depending on the play mode in forward direction
function animate_fwd()
{
   current_image++;   
   if(current_image > last_image)
   {
      if (play_mode == 0)
      {
         current_image = last_image;
         status=0;
         return;
      };                           //NORMAL
      if (play_mode == 1)
      {
         current_image = first_image; //LOOP
      };      
   };   
   document.animation.src = theImages[current_image].src;
   document.control_form.frame_nr.value = current_image;
   timeID = setTimeout("animate_fwd()", delay);
   //window.alert("Estoy en animate_fwd el ID es:"+timeID);  
}

//===> displays image depending on the play mode in reverse direction
function animate_rev()
{
   current_image--;
   if(current_image < first_image)
   {
      if (play_mode == 0)
      {
         current_image = first_image;
         status=0;
         return;
      };                           //NORMAL
      if (play_mode == 1)
      {
         current_image = last_image; //LOOP
      };      
   };   
   document.animation.src = theImages[current_image].src;
   document.control_form.frame_nr.value = current_image;
   timeID = setTimeout("animate_rev()", delay);
   //window.alert("Estoy en animate_bkw el ID es:"+timeID);        
}

//===> changes playing speed by adding to or substracting from the delay between frames
function change_speed(dv)
{
   if(dv<0)//Esta alreves porque se esta dividiendo el valor  mientras mas grande tons mas chico y asi
       speed_text++;
   else
       speed_text--;
   document.control_form.speed.value = speed_text;
   
   delay+=dv;
   if(delay > delay_max) delay = delay_max;
   if(delay < delay_min) delay = delay_min;
}

//===> stop the movie
function stop()
{       
   //window.alert("Estoy en stop borrando el ID:"+timeID);
   clearTimeout(timeID);          
   status = 0;
}

//===> "play forward"
function fwd()
{
   stop();
   status = 1;
   animate_fwd();
}

//===> jumps to a given image number
function go2image(number)
{
   stop();
   //window.alert(number);
   if (number > last_image){
       number = first_image;
   }
   if (number < first_image){
       number = last_image;
   }
   current_image = number;
   document.animation.src = theImages[current_image].src;
   document.control_form.frame_nr.value = current_image;
}

//===> "play reverse"
function rev()
{
   stop();
   status = 1;
   animate_rev();
}

//===> changes play mode (normal, loop, swing)
function change_mode(mode)
{
   play_mode = mode;
}

var terminoDeCargar = false;
var ultimaImagenCargada = 0;

function initImages(){
    for (var i = 0; i <= last_image; i++)
    {   
       theImages[i] = new Image();
   
	if(image_name_increment*i>=100)
		theImages[i].src = image_name + (first_image_name+(i*image_name_increment)) + "." + image_type;
	else
       		if(image_name_increment*i>=10)
           		theImages[i].src = image_name + "0" + (first_image_name+(i*image_name_increment)) + "." + image_type;
       		else
           		theImages[i].src = image_name + "00"+ (first_image_name+(i*image_name_increment)) +"." + image_type;
       
	current_image=i;
       	document.animation.src = theImages[current_image].src;
       	document.control_form.frame_nr.value = current_image;
       
    }
    current_image=1;
    terminoDeCargar=true;    
}
//===> sets everything once the whole page and the images are loaded (onLoad handler in <body>)
function launch()
{    
   if(!terminoDeCargar){
       initImages();
   }      
   fwd();   
   current_image = first_image;      
   document.animation.src = theImages[current_image].src;   
       
}

</SCRIPT>
<head>


<link rel="stylesheet" href="main.css">


</head>
<body onLoad="launch()">
<table  cellspacing="3" width="100%">
<tbody>

<tr>
<td valign="top"><center>    
<H3> 
Consulta de Pron&oacute;sticos <br> 
</H3>
       <form ACTION="Contenido.php" name='templateform' method="post">
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
$fecha_parts =explode("/", $fecha);
echo 'A&ntilde;o: <select name="ano">';
$firts_y=2015;
$current_y=intval($fecha_parts[2]);	
for($i=$firts_y; $i <=$current_y; $i++)
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


Hora: <select name="hora">
	<?php 
    for ($i = 1; $i <=  36; $i++) 
        {
            $selected=" ";
            if($i== $hora)
            {
                $selected="selected";
            }
            echo "<option value='".$i."' ".$selected.">".$i."</option>";	
    }
    ?>
</select>

Altura: <select name="altura">
		<?php 
    for ($i = 0; $i < 3; $i++) 
        {
            $alt=["3","5","10"];
            $selected=" ";
            if($alt[$i]== $altura)
            {
                $selected="selected";
            }
            echo "<option value='".$alt[$i]."' ".$selected.">".$alt[$i]."</option>";	
        }

 	?>
</select>

<!--</H4>-->
<input type="submit" value="Ver" name="enviar" />

<input type="submit" value="Ver actual" name="actual" />
</form> 
</center>
</td>
</tr>
</tbody></table>

<HR>
<table  cellspacing="1" width="100%">
				<tbody><tr>
					<td valign="top"><center>    
        
        <FORM Method=POST Name="control_form">
         <H3>
         <font color="#393b3c" > <?php echo $Descrip; ?>  </font>
        
        <H4>
	Pron&oacute;stico visualizado (d/m/a): <?php echo $fecha;?>  hora:<?php echo $hora;?> altura:<?php echo $altura;?>  
        <H4>
        
       <img NAME="animation" src="<?php echo $ruta_completa; ?>000.jpg" width="680" height="480" alt="<?php echo $ProductName; ?> "/> 
       <br>
       <HR>       
    <img src="../images/playbuttons/primeroB.jpg" width="30" height="30" onClick="go2image(first_image)" onmousedown="this.src='../images/playbuttons/primeroA.jpg'" onmouseup="this.src='../images/playbuttons/primeroB.jpg'" onmouseout="this.src='../images/playbuttons/primeroB.jpg'" />
          <img src="../images/playbuttons/atras.png" width="30" height="30" onClick="go2image(--current_image)" />
          <img src="../images/playbuttons/retroceder.png" width="30" height="30" onClick="rev()" />
          <img src="../images/playbuttons/pausa.png" width="30" height="30" onClick="stop()"/>
          <img src="../images/playbuttons/play.png" width="30" height="30" onClick="fwd()" />
          <img src="../images/playbuttons/avance.png" width="30" height="30" onClick="go2image(++current_image)" />
          <img src="../images/playbuttons/ultimo.png" width="30" height="30" onClick="go2image(last_image)" />                            
          Imagen <INPUT TYPE="text" NAME="frame_nr" VALUE="0" SIZE="2" STYLE="width:40px" onChange="go2image(parseInt(this.value))">/<?php echo $row_imagenes[0]; ?>  
   	    <img src="../images/playbuttons/menos.png" width="30" height="30" onClick="change_speed(100)"/>
          <img src="../images/playbuttons/mas.png" width="30" height="30" onClick="change_speed(-100)" />
               Velocidad: <INPUT TYPE="text" NAME="speed" VALUE="0" SIZE="2" STYLE="width:25px" ONFOCUS="window.alert('Por favor utilice los botones para modificar la velocidad');frame_nr.focus();">
 	
    
    </FORM>              
    </center>
</td>
				</tr>
</tbody></table>

</body>
</html>
