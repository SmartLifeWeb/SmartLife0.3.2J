

var modulos = ["Modulos/Social/foro.html","Modulos/Agenda/agenda2.jsp","Modulos/Social/agendaCompartida.html","Modulos/Entretenimiento/cine.html","Modulos/Generador de ideas/genereadorIdeas.html","Modulos/Entretenimiento/musica.html","Modulos/Tareas/tareas.html"];
var cuenta=0;
function carruceli() {
	cuenta=cuenta-1;
	
if (cuenta<0) {
cuenta=6;
document.getElementById('frame').src=modulos[cuenta];
}
else{
document.getElementById('frame').src=modulos[cuenta];

}
	
}

function carruceld() {
	cuenta=cuenta+1;
	
	

if (cuenta>6) {
cuenta=0;
document.getElementById('frame').src=modulos[cuenta];

}else{
	document.getElementById('frame').src=modulos[cuenta];
}
}
var opacidad1 = 1;
var opacidad2 = 0;
var opacidadr1 = 0;
var opacidadr2 = 1;
var inter;
var inter2;
var interdesp;
var opacidad11 = 1;
var opacidad21 = 0;
var opacidadr11 = 0;
var opacidadr21 = 1;
var inter1;
var inter12;
var interdesp;
var interdesp1;


var ancho=0;
var alto=0;
var ancho1=100;
var alto1=100;


	function cambiarimglogo(){
opacidad1 = 1;
		opacidad2 = 0;
		clearInterval(inter2);
 
		inter= setInterval("difuminado()",50);
	}
	function regresar(){
		
opacidadr1 = 0;
 opacidadr2 = 1;
 		clearInterval(inter);
		inter2=setInterval("difuminador()",50);
	}
	function difuminado() {
		
		
		

		if (opacidad1>0) {
		opacidad1=opacidad1-.1;
document.getElementById('slogo').style.opacity=opacidad1;
	}
	if (opacidad2<1) {
		opacidad2=opacidad2+.1;
document.getElementById('mlogo').style.opacity=opacidad2;
	}
	
	

	}
function difuminador() {
		
	
		

		if (opacidadr1<1) {
		opacidadr1=opacidadr1+.1;
document.getElementById('slogo').style.opacity=opacidadr1;
	}
	if (opacidadr2>0) {
		opacidadr2=opacidadr2-.1;
document.getElementById('mlogo').style.opacity=opacidadr2;
	}
}
	function cambiarimglogo1(){
opacidad11 = 1;
		opacidad21 = 0;
		clearInterval(inter12);
 
		inter1= setInterval("difuminado1()",50);
	}
	function regresar1(){
		
opacidadr11 = 0;
 opacidadr21 = 1;
 		clearInterval(inter1);
		inter12=setInterval("difuminador1()",50);
	}
	function difuminado1() {
		
		
		

		if (opacidad11>0) {
		opacidad11=opacidad11-.1;
document.getElementById('s1logo').style.opacity=opacidad11;
	}
	if (opacidad21<1) {
		opacidad21=opacidad21+.1;
document.getElementById('m1logo').style.opacity=opacidad21;
	}
	
	

	}
function difuminador1() {
		
	
		

		if (opacidadr11<1) {
		opacidadr11=opacidadr11+.1;
document.getElementById('s1logo').style.opacity=opacidadr11;
	}
	if (opacidadr21>0) {
		opacidadr21=opacidadr21-.1;
document.getElementById('m1logo').style.opacity=opacidadr21;
	}
	
	

	}
	function despliega() {
				ancho1=100;
			document.getElementById('hola').style.visibility="visible";	
alto1=100;
opacidaddesp1=1;
clearInterval(interdesp1);
		interdesp= setInterval("eldespliegue()",5);
	}
	var opacidaddesp=0;
	function eldespliegue() {


		if (opacidaddesp<1) {
			opacidaddesp=opacidaddesp+.01;
			document.getElementById('menu1').style.opacity=opacidaddesp;


		}

		if (ancho<100) {
			ancho=ancho+1;
			document.getElementById('menu1').style.width=ancho+"%";
		}
		if (alto<100) {
			alto=alto+1;
		document.getElementById('menu1').style.height=alto+"%";


		}

		

	}
	function despliega1() {
		ancho=0;
alto=0;
opacidaddesp=0;
clearInterval(interdesp);
		interdesp1= setInterval("eldespliegue1()",5);
	}
	var opacidaddesp1=1;
	function eldespliegue1() {


		if (opacidaddesp1>0) {
			opacidaddesp1=opacidaddesp1-.01;
			document.getElementById('menu1').style.opacity=opacidaddesp1;


		}
		

		if (ancho1>0) {
			ancho1=ancho1-1;
			document.getElementById('menu1').style.width=ancho1+"%";
		}
		if (alto1>0) {
			alto1=alto1-1;
		document.getElementById('menu1').style.height=alto1+"%";


		}

		

	}

	

