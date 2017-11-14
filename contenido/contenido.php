<html>
  <?php
    include("queries.php");
  ?>
  <!--pa probarlo tu http://localhost/cenapreddev/pronosticos/administrator/index.php?option=com_menus&view=item&client_id=0&layout=edit&id=390-->
  <head>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link rel="stylesheet" href="main.css">
  </head>
  
  <body >

    <!--div class="row text-center">
      <div class="col">
        <H3> 
          <font color="#393b3c" > Consulta de Pron&oacute;sticos</font> <br> 
        </H3>
      </div>
    </div-->

    <?php 
      
      $fecha = date("j/n");
          
    ?>
  
    <div class="row" style="margin-left: 0px; ">
        
        <form ACTION="contenido.php" class="form-inline form-horizontal col-centered" name='templateform' method="post">
              <!-- <H4> -->
            
            <div class="form-group">
              <label for="dia" class="small">D&iacute;a:&nbsp;</label>
              <select class="form-control form-control-sm" name="dia">
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
            </div>
          
            <div class="form-group ">
              <label for="dia" class="small">&nbsp;Mes:&nbsp;</label>
              <select class="form-control form-control-sm" name="mes">
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
            </div>

            <div class="form-group">
              <?php
                $today = new DateTime();
                $year = $today->format("Y");
                echo '<label for="ano" class="small">&nbsp;A&ntilde;o:&nbsp;</label> <select class="form-control form-control-sm" name="ano">';
                $firts_y=2017;
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
            </div>
            
              <!--</H4>-->
              &nbsp;
            <div class="btn-group" role="group" aria-label="Basic example">
              <button class="form-control form-control-sm btn btn-light btn-custom btn-sm"  name="enviar">&nbsp;Ver &nbsp;</button>
              
              <button class="form-control btn btn-light form-control-sm btn-custom btn-sm" name="actual">&nbsp;Ver actual&nbsp;</button>
            </div>
            
          </form>           
        </div>
      </div>
    </div>

    <HR>

    <div class="row">
        <div class="col">   
            <!-- the animation -->
            <div class="loader" id="loader" style="display: block;"></div>
            <canvas id="animation" style="width: 80%; display: none;"></canvas>
            <br>
        </div>
    </div>    
    <HR>
    <div class="row">
          <FORM Method=POST Name="control_form" class="form-inline form-horizontal col-centered">
            <button type="button" onClick="go2image(first_image)" class="btn btn-light btn-custom"  data-toggle="tooltip" data-placement="bottom" title="Ir a la primera imagen" >
              <i class="material-icons" >skip_previous</i>
            </button>
            <button type="button" id="btn_frwd" style="display: none;" onClick="change_speed(100)" class="btn btn-light btn-custom"  data-toggle="tooltip" data-placement="bottom" title="Menor velocidad">
              <i class="material-icons" >fast_rewind</i>
            </button>
            <button type="button" id="btn_rev" style="display: none;" onClick="rev()" class="btn btn-light btn-custom"  data-toggle="tooltip" data-placement="bottom" title="Reversa">
              <i class="material-icons" >replay</i>
            </button>
            <button type="button" id="btn_prev" style="display: inline;" onClick="go2image(--current_image)" class="btn btn-light btn-custom"  data-toggle="tooltip" data-placement="bottom" title="Imagen anterior">
              <i class="material-icons" >navigate_before</i>
            </button>
            <button type="button" id="btn_stop" style="display: none;" onClick="stop()" class="btn btn-light btn-custom" data-toggle="tooltip" data-placement="bottom" title="Pausa">
              <i class="material-icons" >pause</i>
            </button>

            <button type="button" id="btn_play" style="display: inline;" onClick="fwd()" class="btn btn-light btn-custom" data-toggle="tooltip" data-placement="bottom" title="Play">
              <i class="material-icons" >play_arrow</i>
            </button>
            

            <button type="button" id="btn_next" style="display: inline;" onClick="go2image(++current_image)" class="btn btn-light btn-custom" data-toggle="tooltip" data-placement="bottom" title="Imagen siguiente">
              <i class="material-icons"  >navigate_next</i>
            </button>
            <button type="button" id="btn_ffwd" style="display: none;" onClick="change_speed(-100)" class="btn btn-light btn-custom" data-toggle="tooltip" data-placement="bottom" title="Mayor velocidad">
              <i class="material-icons"  >fast_forward</i>
            </button>
            <button type="button" onClick="go2image(last_image)" class="btn btn-light btn-custom" data-toggle="tooltip" data-placement="bottom" title="Ir a la última imagen">
              <i class="material-icons"  >skip_next</i>
            </button>
            
            <label for="frame_nr" class="small">&nbsp;Imagen&nbsp;</label>  
            <INPUT TYPE="text" NAME="frame_nr" VALUE="0" style="width: 42px;" class="form-control form-control-sm" onChange="go2image(parseInt(this.value))">
            <span class="small"> &nbsp;/<span id="lastimage"></span>&nbsp;&nbsp;&nbsp; </span>
            

            <label for="speed" class="small">&nbsp;Velocidad &nbsp; </label>
            <INPUT TYPE="text" NAME="speed" SIZE="2" class="form-control form-control-sm" style="width: 42px;" readonly="readonly" /> 
     
          </FORM>              
    </div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

    <script language="JavaScript"> 

      var terminoDeCargar = false;

      $(function () {
        $('[data-toggle="tooltip"]').tooltip({
          trigger : 'hover'
        });
        launch();
      });

      function toggledisplay(elementID)
      {
        (function(style) {
            style.display = style.display === 'none' ? '' : 'none';
        })(document.getElementById(elementID).style);
      }

      image_name = "<?php echo $ruta_completa; ?>";
      image_type = "jpg";                   //"gif" or "jpg" or whatever your browser can display
      image_name_increment = 1;             //Indica el aumento en el nombre de la imagen

      first_image_name = 0;     //Representa el nombre de la primer imagen
      first_image = 0;                      //first image number
      last_image ="<?php echo $row_imagenes[0]-1; ?>";      //Representa el numero total de imagenes-1. Esto es, si last_image es 4 entonces en total son 5 imagenes
      
      var inicioPlayfwd = false;    //Controla la animacion si esta en play o en stop
      var inicioPlayBkw = false;    //Controla la animacion cuando esta en reversa

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
      var loadCount = 1;
      var last_image_;
      var lewidth;
      var leheight;

      speed_text = 1;

      //the canvas
      // Testing wether the current browser supports the canvas element:
      var supportCanvas = 'getContext' in document.createElement('canvas');
      if(!supportCanvas){ 
        //make page redirect ?
      }

      myCanvas = document.getElementById('animation');
      canvasContext = myCanvas.getContext('2d');

      //===> makes sure the first image number is not bigger than the last image number
      if (first_image > last_image)
      {
         var help = last_image;
         last_image = first_image;
         first_image = help;
      };

      function draw_slide(image){
        if(image!=false){
          
          if(image){
            canvasContext.clearRect(0, 0, lewidth,leheight);
            canvasContext.drawImage(image,0,0,lewidth,leheight,0,0,lewidth,leheight);
          }
        }

      }

      //===> displays image depending on the play mode in forward direction
      function animate_fwd()
      {
        if(toggleRev == 2){
          var element = document.getElementById("btn_rev");
          element.classList.toggle("btn_rev_pressed");
          element.onclick = rev;
          toggleRev--;
        } 

        clearTimeout(timeID);
        status=1;
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
         // Drawing the default version of the image on the canvas:
         draw_slide(theImages[current_image]);
         document.control_form.frame_nr.value = current_image+1;
         timeID = setTimeout("animate_fwd()", delay);
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
         draw_slide(theImages[current_image]);
         document.control_form.frame_nr.value = current_image+1;
         timeID = setTimeout("animate_rev()", delay);
      }

      //===> changes playing speed by adding to or substracting from the delay between frames
      function change_speed(dv)
      {
         if(dv<0)//Esta alreves porque se esta dividiendo el valor  mientras mas grande tons mas chico y asi
             speed_text++;
         else
             speed_text--;

         delay+=dv;  
         //speed_text = 1/(delay/1000);
         document.control_form.speed.value = speed_text;
         
         if(delay > delay_max) delay = delay_max;
         if(delay < delay_min) delay = delay_min;
      }

      //===> stop the movie
      function stop()
      {       
         clearTimeout(timeID);
         toggledisplay('btn_play');
         toggledisplay('btn_stop');
         toggledisplay('btn_ffwd');
         toggledisplay('btn_frwd');
         toggledisplay('btn_next');
         toggledisplay('btn_prev');          
         toggledisplay('btn_rev');          
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
         //stop();
         //window.alert(number);
         if (number > last_image){
             number = first_image;
         }
         if (number < first_image){
             number = last_image;
         }
         current_image = number;
         
         //document.animation.src = theImages[current_image].src;
         draw_slide(theImages[current_image]);
         document.control_form.frame_nr.value = current_image+1;
      }

      //===> "play reverse"
      toggleRev = 1;
      function rev()
      {
         //stop();
         var element = document.getElementById("btn_rev");
         element.classList.toggle("btn_rev_pressed");
         clearTimeout(timeID);
         status = 1;

         if(toggleRev == 1){
          animate_rev();
          document.getElementById("btn_rev").onclick = animate_fwd;
          toggleRev++;
         } else {
          animate_fwd();
          document.getElementById("btn_rev").onclick = rev;
          toggleRev--;
         }
         
      }

      //===> changes play mode (normal, loop, swing)
      function change_mode(mode)
      {
         play_mode = mode;
      }
      
      var ultimaImagenCargada = 0;

      function initImages(){
        for (var i = 0; i <= last_image; i++){

              theImages[i] = new Image();
              
              if(image_name_increment*i>=100){
                theImages[i].src = image_name + (first_image_name+(i*image_name_increment)) + "." + image_type;
                theImages[i].onload = imagesloaded;
              }
              else if(image_name_increment*i>=10){
                theImages[i].src = image_name + "0" + (first_image_name+(i*image_name_increment)) + "." + image_type;
                theImages[i].onload = imagesloaded;
              }
              else{
                theImages[i].src = image_name + "00"+ (first_image_name+(i*image_name_increment)) +"." + image_type;
                theImages[i].onload = imagesloaded;
              }
              
              current_image=i;
              //document.animation.src = theImages[current_image].src;
              // Drawing the default version of the image on the canvas:
              //draw_slide(theImages[current_image]);
              document.control_form.frame_nr.value = current_image+1;
        }
      }

      function imageOnError() {
          // image did not load
      }

      var index = 0;
      function rmBadImageCheck (items, callback){
          var x = items.length;
          //if all items have been checked, terminate the chain (by returning) and call the callback with the new items
          if(index >= x){
              last_image_ = items.length;
              return callback(items);
          }
          var img = new Image();
          img.src = items[index].src;

          // if error, splice the item from the array, and check the next one which will be on the same index because of the splice call (that's why we don't increment index)
          img.onerror = function(){
              items.splice(index, 1);
              rmBadImageCheck(items, callback);
          }
          // if success, keep the item but increment index to point to the next item and check it
          img.onload = function(){
              index++;
              rmBadImageCheck(items, callback);
          }
      }

      var items = [/*...*/];
      var justonce = 1;
      //called after each image is loaded and when all images are loaded, starts the show
      function imagesloaded() {
        if( justonce == 1){
          lewidth = this.width;
          leheight = this.height;
          myCanvas.width = this.width;
          myCanvas.height = this.height;
          justonce++;
        }
        
        if (loadCount == Math.round(last_image/5) ) {
          terminoDeCargar = true;
          toggledisplay('loader');
          toggledisplay('animation');
          current_image = 0;
          document.control_form.frame_nr.value = current_image+1;
          draw_slide(theImages[current_image]);
          //launch();
        }
        loadCount++;
        
      }
      
      //===> sets everything once the whole page and the images are loaded (onLoad handler in <body>)
      function launch()
      {    
         if(!terminoDeCargar){
             initImages();
         }
          // when calling rmBadImageCheck pass a callback function that accept one argument (the newItems array).
          rmBadImageCheck(theImages, function(newItems){
            // use that array here
            //console.log(newItems);
            theImages = newItems;
            last_image = theImages.length-1;
            document.getElementById('lastimage').innerHTML = theImages.length;
          });
     
         //fwd();   
         //go2image(first_image);
         
         current_image = first_image;
         document.control_form.speed.value = speed_text;      
         console.log(current_image);
         // Drawing the default version of the image on the canvas:
         
        
      }
    </SCRIPT>

  </body>
</html>