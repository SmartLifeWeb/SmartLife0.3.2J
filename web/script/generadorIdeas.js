var opacidad=1;
    	var opacidad2=0;
   		var img1= document.getElementById('imagen1');
    	var img2= document.getElementById('imagen2');
       var v1=true;
   var v2=false;

    	 function cambiarimagenes() {
  var numran1= Math.floor((Math.random() * 6) + 1);
    var numran2= Math.floor((Math.random() * 6) + 1);
		if (v1) {
    	opacidad=opacidad-.01;
    	opacidad2=opacidad2+.01;
    
    }	if (opacidad<0 && opacidad2>1) {
    		v1=false;
    		document.getElementById('imagen1').src="../../imagenes/temafotografia/generadorIdeas/fondo"+numran1+".jpg";

    	}
   		if (!v1) {
   			opacidad=opacidad+.01;
    	opacidad2=opacidad2-.01;
    	
   		}if (opacidad>1 && opacidad2<0) {
    		v1=true;
    		 document.getElementById('imagen2').src="../../imagenes/temafotografia/generadorIdeas/fondo"+numran2+".jpg";

    	}
    	
    		
    		document.getElementById('contenedor1').style.opacity=opacidad;

    
    		
    		
    		 document.getElementById('contenedor2').style.opacity=opacidad2;
 }

  setInterval("cambiarimagenes()",100);
var posicion=100;
var op=0;
function aparecer1() {
  posicion=posicion-0.1;
  op=op+.001;

  if(posicion>25){ 

  document.getElementById('log').style.top=posicion+"%";


}
if (op<1) {

  document.getElementById('log').style.opacity=op;
}
}
 
    setInterval("aparecer1()",.1);
