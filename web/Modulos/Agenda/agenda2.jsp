<%-- 
    Document   : agenda2
    Created on : 3/11/2017, 07:41:44 AM
    Author     : Alumno
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" style="height: 100%; margin: 0px;">
    <head>
        <meta charset="UTF-8">
        <title> Agenda</title>
        
        <script type="text/javascript" src="../../script/agenda.js"></script>
    </head>
    <script>
        var veri=true;
        var ver=0;
         function mostraractividad(atr){
             
           
                 document.getElementById("contact"+atr).style.visibility="visible";
               
            
             
  
       
    }
    </script>
    <style>
        .contenedor{
	width: 100%;
	height: 100%;
	display: flex;
	flex-direction: column;
	flex-wrap: nowrap;



}

.principal{
	width: 100%;
	height: 100%;
	border: 1px solid;


}
.cuerpo{
	width: 100%;
	height: 700px;
	border: 1px solid;

}
.contenedora{
	width: 100%;
	height: 100%;

	position: absolute;
	top: 0%;
	left: 0%;

}
.contenedorb{
width: 100%;
	height: 100%;
		position: absolute;
	top: 0%;
	left: 0%;
}
.fondo{
	width: 100%;
	height: 100%;
}
.nombremodulo{
	position: absolute;
	width: 100%;
	height: 50%;
	top:25%;
	left: 0%;
	
	font-size: 30px;
background: rgba(255, 255, 255,.4);
	
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;

	
}
.laterali{
	position: absolute;
	top: 0%;
	left: 0%;
	width: 20%;
	height: 100%;
	cursor : url(imagenescss/izquierda.png), pointer;


}
.laterald{
	position: absolute;
	top: 0%;
	left: 80%;
	width: 20%;
	height: 100%;
	cursor : url(imagenescss/derecha.png) , pointer;
	



}
.actividades{
   display: flex;
   width: 100%;
   height: 100%;
   flex-direction: row;
   justify-content: space-around;
   align-items: center;
     visibility: hidden;
     position: fixed;
     top: 0%;
     left:0%;
     background: rgba(0,0,0,.7);
     
}
.itema{
    width: 15%;
    height: 20%;
 
   
    
}
.principalact{
    width:150px;
    height:70%;
    background: black;
    color: white;
    margin-bottom: 20px;
    margin-right: 10px;
    margin-left: 10px;
    
}
.contenedormenu{
    width: 100%;
    height: 20%;
    display: flex;
    flex-direction: row;
    flex-wrap: wrap;
    justify-content: center;
   
}
    </style>
    
    <body style="height: 100%; margin: 0px;">


        <div class="contenedor">



            <div class="introduccion">
                <div class="contenedora" id="contenedor1">
                    <img src="../../imagenes/temafotografia/AgendaWeb/fondo1.jpg" class="fondo" id="imagen1">
                </div>
                <div class="contenedorb" id="contenedor2">
                    <img src="../../imagenes/temafotografia/AgendaWeb/fondo2.jpg" class="fondo" id="imagen2">
                </div> 
                <div class="nombremodulo" id="log"> <img class="logo" src="../../imagenes/logos/agenda.png"> </div>
            </div>
        </div>
        <div class="cuerpo">
            <form action="agenda.jsp" method="post" name="creacion">
                
                <h1 Style="opacity: 0" name="usuario">Hola <c:out value="${user}" /></h1>
                Tipo de actividad : <select name="tipoactividad">
                    <option value="1"> Tarea</option>
                    <option value="2"> Actividad cultural</option>
                    <option value="3"> Actividad deportiva</option>
                    <option value="4"> Personal</option>
                    <option value="5"> Del proyecto</option>
                </select>

                <br>
                Nombre de la actividad: <input type="text" name="nombreactividad">
                <br>
                Fecha de inicio  <input type="date" name="fechainicio">
                <br>
                Fecha de termino  <input type="date" name="fechatermino">
                <br>
                Descripcion <textarea rows="4" cols="50" name="descripcion"> </textarea>
                <br>
                Prioridad 
                <select name="prioridad">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>

                </select>
               
                <input type="submit" name="enviar" value="Registrar actividad">




            </form>
                <br>
                <br>


       
                 <%
           Connection c=null;
           Statement sta=null; 
           ResultSet r=null; 
           


            try{ 
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            c=DriverManager.getConnection("jdbc:mysql://localhost/smartdatabase","root","n0m3l0");
            sta=c.createStatement();
                
                
                
            }
            catch(SQLException error){
                
                out.println(error.toString());
            }int contador=0;
             out.println("<div class='contenedormenu'>");
            try{
            String nombrebusqueda="javier"; //cambiar al usuario una ves hecha las sesiones
            r=sta.executeQuery("SELECT * FROM actividad where idUsuario='"+nombrebusqueda+"';");
            
            
            
            while(r.next()){
                contador=contador+1;
                String actividad = r.getString("NombreAct");
                String tipo = r.getString("IdTipoAct");
                String Fechaini = r.getString("FechaIni");
                String Fechafin = r.getString("FechaFin");
                String Descripcion = r.getString("Descripción");
                String prioridad = r.getString("Prioridad");
                
                out.println("<div class='principalact' onclick='mostraractividad(this.id)' id='"+contador+"'>"+actividad+"</div>");
                 out.println("<div class='actividades' id='contact"+contador+"'>");
                 
                 out.println("<div class='itema'>"+actividad+"</div>");
                 out.println("<div class='itema'>"+tipo+"</div>");
                 out.println("<div class='itema'>"+Fechaini+"</div>");
                 out.println("<div class='itema'>"+Fechafin+"</div>");
                 out.println("<div class='itema'>"+Descripcion+"</div>");
                 out.println("<div class='itema'>"+prioridad+"</div>"); 

                  out.println("</div>");
                 
                 }
            
             out.println("</div>");
            
            
            
            
            
            }
            catch(SQLException error){
                 out.println(error.toString());
            }
            %>
         </div>
    </body>
</html>
