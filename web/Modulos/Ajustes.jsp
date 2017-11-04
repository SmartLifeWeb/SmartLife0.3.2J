<%-- 
    Document   : Ajustes
    Created on : 26/10/2017, 01:38:43 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>
                        <input class="text" type="text" placeholder="Nombre" name="nombre"  onkeypress="return Letras(event);" required/>
                        <br><br>
                        <input class="text" type="text" placeholder="Apellido paterno" name="a_paterno"  onkeypress="return Letras(event);" required/>
                        <br><br>
                        <input class="text" type="text" placeholder="Apellido Materno" name="a_materno"  onkeypress="return Letras(event);" required/>
                        <br><br>
                        <input class="text" type="text" placeholder="Usuario" name="user"   required/>
                        <br><br>
                        <input class="text" type="text" placeholder="Correo Electronico" name="correo"   required/>
                        <br><br>
                        <input class="text" type="text" placeholder="Telefono" name="telefono"  onkeypress="return Numeros(event);" required/>
                        <br><br>

                        <input class="text" type="password" id="Confirmar" placeholder="Nueva Contraseña" maxlength="8" onkeypress="return Letras2(event);" required/>
                        <br><br>
                        <select name="rol" id="rol" onchange="Revisa()" >
                            <option>Rol</option>
                            <option value="1">Profesionista</option>
                            <option value="2">Estudiante</option>
                        </select><br><br>
                         
                        <br>

                        <input type="submit" value="Aceptar" name="registra">
                    </form>
    </body>
</html>
