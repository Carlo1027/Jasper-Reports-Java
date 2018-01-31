<%-- 
    Document   : irAinsertar
    Created on : 02/06/2016, 12:57:11 PM
    Author     : Carlo Castro
--%>

<%@page import="Controlador.mysqlConexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="imags/arnebuk.jpg"/>
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-theme.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/bootstrap-social.css" rel="stylesheet">
        <link href="css/mystyles.css" rel="stylesheet">
        <title>Insertar</title>
        <style>
            #marco {
                position:absolute;
                border-radius: 30px;
                top:50%; 
                left:50%;
                border: 5px #aaa;
                border-style: outset inset inset outset;
                padding: 15px 15px 15px 15px;
                transform: translate(-50%, -50%);
                -webkit-transform: translate(-50%, -50%);
            }
        </style>
    </head>
    <body background="imags/fondo1.jpg" style="background-size: cover;-moz-background-size: cover;-webkit-background-size: cover;-o-background-size: cover;">
        <div class="row row-content" id="marco" style="background-color: silver;">
            <h3><center>Insertar Datos</center></h3><br>
            <form action="insertar.jsp">
                <div class="form-group">
                    <div align="right" class="col-sm-3">
                        <label>SERIE DOCUMENTAL:</label><br>
                    </div>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="serialdocu" required><br>
                    </div>
                </div>

                <div class="form-group">
                    <div align="right" class="col-sm-3">
                        <label>FECHAS EXTREMAS:</label><br>
                    </div>
                    <div class="col-sm-9">
                        <input type="date" class="form-control" name="fechadocu" required><br>
                    </div>
                </div>

                <div class="form-group">
                    <div align="right" class="col-sm-3">
                        <label>FOLIOS: </label>
                    </div>
                    <div class="col-sm-9">
                        <input type="numeric" class="form-control" name="folios" required><br>
                    </div>
                </div>

                <div class="form-group">
                    <div align="right" class="col-sm-3">
                        <label>DEL N°: </label>
                    </div>
                    <div class="col-sm-3">
                        <input type="numeric" class="form-control" name="rangoinf" required=""><br>
                    </div>
                    <div align="right" class="col-sm-3">
                        <label>AL N°: </label>
                    </div>
                    <div class="col-sm-3">
                        <input type="numeric" class="form-control" name="rangosup" required><br>
                    </div>
                </div>

                <div class="form-group">
                    <div align="right" class="col-sm-3">
                        <label>CAJA: </label>
                    </div>
                    <div class="col-sm-9">
                        <input type="numeric" class="form-control" name="caja" required=""><br>
                    </div>
                </div>

                <div class="form-group">
                    <div align="right" class="col-sm-3">
                        <label>PAQUETE: </label><br>
                    </div>
                    <div class="col-sm-9">
                        <input type="numeric" class="form-control" name="paquete" required><br>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-sm-3">

                    </div>
                    <div class="col-sm-9">
                        <div class="col-sm-3">
                            <a href="index.jsp" class="btn btn-success"><span class="glyphicon glyphicon-arrow-left"></span> Volver</a>
                        </div>
                        <div class="col-sm-3">

                            <button type="submit" class="btn btn-danger">Agregar <span class="glyphicon glyphicon-ok"></span></button>
                        </div>
                    </div>
                </div>                
            </form>
        </div>
    </body>
</html>
