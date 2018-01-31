<%-- 
    Document   : modificar
    Created on : 11/11/2015, 01:03:20 AM
    Author     : Carlo Castro
--%>

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
        <title>Modificar</title>
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
        <%
            if (request.getParameter("serialdocu").trim() != null && request.getParameter("fechadocu").trim() != null && request.getParameter("fechadocu1").trim() != null && Integer.parseInt(request.getParameter("folios")) >= 0 && Integer.parseInt(request.getParameter("rangoinf")) >= 0 && Integer.parseInt(request.getParameter("rangosup")) >= 0 && Integer.parseInt(request.getParameter("caja")) >= 0 && Integer.parseInt(request.getParameter("paquete")) >= 0 && Integer.parseInt(request.getParameter("iddato")) != 0) {
                //session.setAttribute("iddato",Integer.parseInt(request.getParameter("iddato")));
        %>
        <div id="marco" style="background-color: silver;">
            <h3><center>Modificar Datos</center></h3><br>
            <form method="get" action="actualizar.jsp" >
                <div class="form-group">
                    <div align="right" class="col-sm-3">
                        <label>SERIE DOCUMENTAL:</label><br>
                    </div>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="serialdocu" value="<%=request.getParameter("serialdocu")%>" ><br>
                    </div>
                </div>

                <div class="form-group">
                    <div align="right" class="col-sm-3">
                        <label>FECHAS EXTREMAS:</label><br>
                    </div>
                    <div class="col-sm-4">
                        <input type="date" class="form-control" name="fechadocu" value="<%=request.getParameter("fechadocu")%>" >
                    </div>
                    <div class="col-sm-1">
                        <label> </label>                        
                    </div>
                    <div class="col-sm-4">
                        <input type="date" class="form-control" name="fechadocu1" value="<%=request.getParameter("fechadocu1")%>" ><br>
                    </div>                   
                </div>

                <div class="form-group">
                    <div align="right" class="col-sm-3">
                        <label>FOLIOS: </label>
                    </div>
                    <div class="col-sm-9">
                        <input type="numeric" class="form-control" name="folios" value="<%=Integer.parseInt(request.getParameter("folios"))%>" ><br>
                    </div>
                </div>                    

                <div class="form-group">
                    <div align="right" class="col-sm-3">
                        <label>DEL N°: </label>
                    </div>
                    <div class="col-sm-3">
                        <input type="numeric" class="form-control" name="rangoinf" value="<%=Integer.parseInt(request.getParameter("rangoinf"))%>" required><br>
                    </div>
                    <div align="right" class="col-sm-3">
                        <label>AL N°: </label>
                    </div>
                    <div class="col-sm-3">
                        <input type="numeric" class="form-control" name="rangosup" value="<%=Integer.parseInt(request.getParameter("rangosup"))%>" required><br>
                    </div>
                </div>

                <div class="form-group">
                    <div align="right" class="col-sm-3">
                        <label>CAJA: </label>
                    </div>
                    <div class="col-sm-9">
                        <input type="numeric" class="form-control" name="caja" value="<%=Integer.parseInt(request.getParameter("caja"))%>" required><br>
                    </div>
                </div>

                <div class="form-group">
                    <div align="right" class="col-sm-3">
                        <label>PAQUETE: </label>
                    </div>
                    <div class="col-sm-9">
                        <input type="numeric" class="form-control" name="paquete" value="<%=Integer.parseInt(request.getParameter("paquete"))%>" required><br>
                    </div>
                </div>

                <div class="form-group">
                    <div align="right" class="col-sm-3">
                        <label></label>
                    </div>
                    <div class="col-sm-9">
                        <input type="hidden" class="form-control" name="iddato" size="3" value="<%=Integer.parseInt(request.getParameter("iddato"))%>" readonly><br>
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
                            <button type="submit" class="btn btn-danger">Modificar <span class="glyphicon glyphicon-ok"></span></button>
                        </div>                        
                    </div>
                </div>
            </form>
            <%  }%>                
        </div>
    </body>
</html>
