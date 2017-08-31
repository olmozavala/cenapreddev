<html>
    <head>
        <link rel="stylesheet" href="js/ol3/css/ol.css" type="text/css" />
    
       
        <script src="js/ol3/js/ol.js"></script>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<style>
      .ol-popup {
        position: absolute;
        background-color: white;
        -webkit-filter: drop-shadow(0 1px 4px rgba(0,0,0,0.2));
        filter: drop-shadow(0 1px 4px rgba(0,0,0,0.2));
        padding: 15px;
        border-radius: 10px;
        border: 1px solid #cccccc;
        bottom: 12px;
        left: -50px;
        min-width: 60px;
      }
      .ol-popup:after, .ol-popup:before {
        top: 100%;
        border: solid transparent;
        content: " ";
        height: 0;
        width: 0;
        position: absolute;
        pointer-events: none;
      }
      .ol-popup:after {
        border-top-color: white;
        border-width: 10px;
        left: 48px;
        margin-left: -10px;
      }
      .ol-popup:before {
        border-top-color: #cccccc;
        border-width: 11px;
        left: 48px;
        margin-left: -11px;
      }
      .ol-popup-closer {
        text-decoration: none;
        position: absolute;
        top: 2px;
        right: 8px;
      }
      .ol-popup-closer:after {
        content: "✖";
      }
    </style>
    </head>
    <body>
        <div id="map_container">
            <h4><font color="#393b3c"><center>Mapa de estaciones</center></font></h4>
            <div id="map" class="map">
                <div id="popup" class="ol-popup">
                    <a href="#" id="popup-closer" class="ol-popup-closer"></a>
                    <div id="popup-content"></div>
                </div>
            </div>
        </div>

        <script>
            var map;
            var coord;
           
           
                var i, lat, lon, geom, feature, features = [], style;
                var container = document.getElementById('popup');
                var content = document.getElementById('popup-content');
                var closer = document.getElementById('popup-closer');	
                var tipo=location.search.split('id=')[1];
                
                var url="http://10.20.12.147/operativo/services/get_st_coords.php?id=";
                    url=url.concat(tipo); 
                    

                var Dat;
	    	    $.ajax({
     		        url: url ,
        	        dataType: "text",
		            success: function(data) {
                    coord=JSON.parse(data);
		            
                    	 /**
 * Add a click handler to hide the popup.
 * @return {boolean} Don't follow the href.
 */
closer.onclick = function() {
  overlay.setPosition(undefined);
  closer.blur();
  return false;
};

/**
 * Create an overlay to anchor the popup to the map.
 */
var overlay = new ol.Overlay(/** @type {olx.OverlayOptions} */ ({
  element: container,
  autoPan: true,
  autoPanAnimation: {
    duration: 250
  }
}));
  

            for(i=0; i< coord.length; i++) {
            	var estacion= coord[i];
                
                lat = parseFloat(estacion.latitud);
                lon = parseFloat(estacion.longitud);
               
                
                geom = new ol.geom.Point( ol.proj.transform([lon,lat],'EPSG:4326', 'EPSG:3857') );

                feature = new ol.Feature({
                    geometry: geom,
                    radius:  5,
                    name:estacion.nombre,
                    idS:estacion.id_station,
                    imagen:" ",
                    tipo:estacion.tipo_dato
                });
                features.push(feature);

                style = computeFeatureStyle(feature);
                feature.setStyle(style);
            }                   
              // Source and vector layer
            var vectorSource = new ol.source.Vector({
                features: features
            });

            var vectorLayer = new ol.layer.Vector({
                source: vectorSource
                
            });
   
   
   
    var newLayer = new ol.layer.Tile({
        source: new ol.source.TileWMS({
		 url: 'http://ncwms.coaps.fsu.edu/geoserver/wms',
		 params: {LAYERS: 'comm:pyrResult512'}
			})
		});          
        
         var statesLayer = new ol.layer.Tile({
        source: new ol.source.TileWMS({
		 url: 'http://132.248.8.238:8080/geoservercaro/wms',
		 params: {LAYERS: 'base:estados'}
			})
		}); 
        
        
  
     
    map = new ol.Map({
        layers: [newLayer,statesLayer, vectorLayer],
        target:'map',
        overlays: [overlay],
        renderer:'canvas',
    	view: new ol.View({
    		center:ol.proj.transform([-100.8,23.2], 'EPSG:4326', 'EPSG:3857'), 
    		extent: ol.proj.transformExtent([-120,4,-80,35], 'EPSG:4326', 'EPSG:3857'),
    		maxZoom:12,
    		minZoom:5,
    		zoom:5
    		
    	})
   });
    var element = document.getElementById('popup');
    /**
 * Add a click handler to the map to render the popup.
 */
 map.on('pointermove', function(evt) {
	 var feature = map.forEachFeatureAtPixel(evt.pixel,
      function(feature,vectorLayer) {
        return feature;
      });
   if (feature) {
    var geometry = feature.getGeometry();
    var coord2 = geometry.getCoordinates();
    var index=feature.get('idS');
    var tupl= feature.get('imagen');
  content.innerHTML = '<code>' + feature.get('name') +
      '</code> ' ;
  overlay.setPosition(coord2);
  } 
});


map.on('click', function(evt) {
	 var feature = map.forEachFeatureAtPixel(evt.pixel,
      function(feature, layer) {
        return feature;
      });
   if (feature) {
       var station=feature.get('idS');
       var sn=station.toLowerCase();
       
       if(tipo=='sondeo') 
         urlS='http://10.20.12.147/operativo/index.php/sondeos/'+sn+'-'+tipo;
       else
      	 urlS='http://10.20.12.147/operativo/index.php/meteogramas/'+sn+'-'+tipo;
    
    window.top.location.href = urlS;
  
  } 
});

               	  }     

                });
            

function computeFeatureStyle(feature) {

if (feature.get('tipo')==0)
   colorstring='rgba(255,224,0,1)';
else 
    colorstring='rgba(3,224,0,1)';

                return new ol.style.Style({
                    image: new ol.style.Circle({
                        radius: feature.get('radius'),
                        fill: new ol.style.Fill({
                            color: colorstring
                        }),
                        stroke: new ol.style.Stroke({
                            color: 'rgba(255,255,255,0.8)',
                            width: 1
                            
                        })
                    }),
                    text: new ol.style.Text({
                        font: '12px helvetica,sans-serif',
                        fill: new ol.style.Fill({
                            color: '#000'
                        }),
                        stroke: new ol.style.Stroke({
                            color: '#fff',
                            width: 3
                        })
                    })
                });
            }


        </script>

    </body>
</html>
