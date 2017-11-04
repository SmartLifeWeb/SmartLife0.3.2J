<%-- 
    Document   : crear
    Created on : 30-mar-2017, 17:46:57
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en" style="height: 100%; margin: 0px;">
    <head>
        <meta charset="UTF-8">

    </head>

    <body style="height: 100%; margin: 0px;">
        <h1>Actividad registrada</h1>


        <%

            Connection con = null;
            Statement sta = null;

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost/smartdatabase", "root", "n0m3l0");
                sta = con.createStatement();

            } catch (SQLException error) {

                out.println(error.toString());
            }

            try {
                String user = request.getParameter("user");
                String nombreactividad = request.getParameter("nombreactividad");
                String tipoactividad = request.getParameter("tipoactividad");
                String fechainicio = request.getParameter("fechainicio");
                String fechatermino = request.getParameter("fechatermino");
                String descripcion = request.getParameter("descripcion");
                String prioridad = request.getParameter("prioridad");
                String Javier="javier";
                sta.executeUpdate("Insert into actividad (idUsuario, NombreAct,FechaIni,FechaFin,Descripción,Prioridad, idTipoAct)values('"+Javier+"','" + nombreactividad + "','" + fechainicio + "','" + fechatermino + "','" + descripcion + "','" + prioridad + "'," + tipoactividad + ");");

            } catch (SQLException error) {

                out.println(error.toString());
            }

            con.close();


        %>


    </body>
</html>
