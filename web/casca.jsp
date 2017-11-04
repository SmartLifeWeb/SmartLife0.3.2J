<%-- 
    Document   : casca
    Created on : 26/10/2017, 02:40:09 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet"  type="text/css" href="CSS/casacaron.css">
	<script type="text/javascript" src="cascaron.js"></script>
    </head>
    <body>
        <div class="contenedor">	


            <div class="mod">
                <iframe src="Modulos/Social/foro.html" frameborder="0" class="paginas" id="frame" name="modul" ></iframe>
            </div>
            <div class="laterali"  onclick="carruceli()"></div>
            <div class="laterald"  onclick="carruceld()"></div>
        </div>
        <div class="botonmenu" onmouseover="cambiarimglogo()" onmouseout="regresar()" onclick="despliega()"><img class="imgmenu" id="slogo" src="menu/smartlifelogo.png" alt="">
            <img class="imgmenum" id="mlogo" src="menu/menu.png" alt="">
        </div>

        <div class="menu" id="menu1">
            <div class="botonmenu1" onmouseover="cambiarimglogo1()" onmouseout="regresar1()" onclick="despliega1()"><img class="imgmenu" id="s1logo" src="menu/logoblanco.png" alt="">
                <img class="imgmenum" id="m1logo" src="menu/close.png" alt="">  </div>
            <div class="contenidomenu" id="hola">
                <p>Hola <c:out value="${Nombre}" /></p>
                <p>	Agenda </p>
                <p>	Foro </p>
                <p>	Musica </p>
                <p>	Cine </p>
                <p>	Generador de ideas </p>
                <p>	Tareas </p>
                <p>	Agenda compartida </p>

            </div>

        </div>	








    </body>
</html>
