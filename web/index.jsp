<%-- 
    Document   : index
    Created on : 10/06/2016, 01:50:51 PM
    Author     : Carlo Castro
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Modelo.Consulta"%>
<%@page import="java.util.List"%>
<%@page import="Controlador.Registro"%>
<%@page import="Controlador.Registro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"

    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="imags/arnebuk.jpg"/>
        <title>Arnebuk</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-theme.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/bootstrap-social.css" rel="stylesheet">
        <link href="css/mystyles.css" rel="stylesheet">
        <script type="text/javascript" language="javascript" src="js/jquery-1.10.2.min.js"></script>
        <!-- Bootstrap -->
        <link href="css/bootstrap/bootstrap.css" rel="stylesheet" media="screen">				
        <link href="css/controls/datatable/demo_table.css" rel="stylesheet" media="screen">
        <style type="text/css" title="currentStyle"></style>
        <script type="text/javascript" language="javascript" src="js/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" language="javascript" src="js/datables/jquery.dataTables.min.js"></script>
        <script type="text/javascript" language="javascript" src="js/bootstrap/bootstrap.js"></script>                        
        <script type="text/javascript" language="javascript" src="js/bootstrap/ext.bootstrap.js"></script>
        <script type="text/javascript" charset="utf-8">
            $(document).ready(function () {

            });
            function permite(elEvento, permitidos) {
                // Variables que definen los caracteres permitidos
                var numeros = "0123456789";
                var caracteres = " abcdefghijklmnñopqrstuvwxyzABCDEFGHIJKLMNÑOPQRSTUVWXYZ";
                var numeros_caracteres = numeros + caracteres;
                var teclas_especiales = [8, 37, 39, 46];
                // 8 = BackSpace, 46 = Supr, 37 = flecha izquierda, 39 = flecha derecha


                // Seleccionar los caracteres a partir del parámetro de la función
                switch (permitidos) {
                    case 'num':
                        permitidos = numeros;
                        break;
                    case 'car':
                        permitidos = caracteres;
                        break;
                    case 'num_car':
                        permitidos = numeros_caracteres;
                        break;
                }

                // Obtener la tecla pulsada 
                var evento = elEvento || window.event;
                var codigoCaracter = evento.charCode || evento.keyCode;
                var caracter = String.fromCharCode(codigoCaracter);

                // Comprobar si la tecla pulsada es alguna de las teclas especiales
                // (teclas de borrado y flechas horizontales)
                var tecla_especial = false;
                for (var i in teclas_especiales) {
                    if (codigoCaracter == teclas_especiales[i]) {
                        tecla_especial = true;
                        break;
                    }
                }

                // Comprobar si la tecla pulsada se encuentra en los caracteres permitidos
                // o si es una tecla especial
                return permitidos.indexOf(caracter) != -1 || tecla_especial;
            }
        </script>
    </head>
    <body>
        <div class="container">
            <div class="row row-content">
                <div class="col-xs-12">
                    <h2>IMPRESIÓN DE CARATULAS</h2>
                </div>
            </div>
            <div class="row row-content">
                <div class="col-xs-10 col-sm-10">
                    <form method="GET" action="ReporteID.jsp" class="form-horizontal" role="form">
                        <div class="form-group">
                            <br><label class="col-sm-2 control-label" for="idcliente">SERIE DOCUMENTAL</label>
                            <div class="col-sm-5">
                                <!--input type="text" class="form-control" type="text" name="idcliente" id="idcliente" required-->
                                <select class="form-control" name="idcliente" >
                                    <%
                                        ResultSet rst = Consulta.Combo();
                                        while (rst.next()) {
                                    %>
                                    <option value="<%=rst.getString("serialdocu").trim()%>"> <%= rst.getString("serialdocu").trim()%> </option>
                                    <%
                                        }
                                        rst.close();
                                    %>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-2">

                            </div>
                            <div class="col-sm-2">
                                <input type="submit" name="button" id="button" class="btn btn-primary" value="CARATULA SIMPLE"></input>
                            </div>
                            <div class="col-sm-2">
                                <input type="button" class="btn btn-primary" value="TODAS LAS CARATULAS" onclick = "location = 'ReporteGeneral.jsp'"/>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <div class="row row-content">
                <legend></legend>
                <div>
                    <div class="col-lg-12">
                        <div class="responsive-tables">
                            <table style="table-layout: auto" cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered rt cf" id="example" width="100%" height="100%">    
                                <thead class="cf">
                                <th width="18%">SERIE</th>
                                <th width="17%">FECHA</th>
                                <th width="17%">FECHA1</th>
                                <th width="8%">FOLIOS</th>
                                <th width="8%">DEL N°</th>
                                <th width="8%">AL N°</th>
                                <th width="8%">CAJA</th>
                                <th width="8%">PAQUETE</th>
                                <th width="4%"></th>
                                <th width="4%"></th>
                                </thead>

                                <!--tfoot>
                                    <th>TABNAME</th>
                                    <th>COLNAME</th>
                                    <th>DESCRIPCION</th>
                                    <th>OBSERVACION</th>
                                    <th></th>
                                    <th></th>
                                </tfoot-->

                                <tbody align="left">
                                    <%
                                        //Connection conexion=mysqlConexion.Conexion();
                                        //if(conexion!=null)out.println(conexion+" Conexion hecha\n");
                                        //else out.println("Error de conexion\n");
                                        List<Registro> registro = Consulta.MostrarRegistro();
                                        for (int i = 0; i < registro.size(); i++) {
                                    %>
                                    <tr>                                     
                                        <td width="18%"><%=registro.get(i).getSerialdocu().trim()%></td>
                                        <td width="17%"><%=registro.get(i).getFechadocu().trim()%></td>
                                        <td width="17%"><%=registro.get(i).getFechadocu1().trim()%></td>
                                        <td width="8%"><%=registro.get(i).getFolios()%></td>
                                        <td width="8%"><%=registro.get(i).getRangoinf()%></td>
                                        <td width="8%"><%=registro.get(i).getRangosup()%></td>
                                        <td width="8%"><%=registro.get(i).getCaja()%></td>
                                        <td width="8%"><%=registro.get(i).getPaquete()%></td>
                                        <td width="4%"><center><a href="modificar.jsp?serialdocu=<%=registro.get(i).getSerialdocu().trim()%>&&fechadocu=<%=registro.get(i).getFechadocu().trim()%>&&fechadocu1=<%=registro.get(i).getFechadocu1().trim()%>&&folios=<%=registro.get(i).getFolios()%>&&rangoinf=<%=registro.get(i).getRangoinf()%>&&rangosup=<%=registro.get(i).getRangosup()%>&&caja=<%=registro.get(i).getCaja()%>&&paquete=<%=registro.get(i).getPaquete()%>&&iddato=<%=registro.get(i).getIddato()%>"><span class="glyphicon glyphicon-edit"></span></a></center></td>
                                        <td width="4%"><center><a href="eliminar.jsp?iddato=<%=registro.get(i).getIddato()%>"><span class="glyphicon glyphicon-trash"></span></a></center></td>
                                        <!--td width="4%"><center><a data-href="eliminar.jsp?iddato=<%=registro.get(i).getIddato()%>" data-toggle="modal" data-target="#confirm-delete" href="#"><span class="glyphicon glyphicon-trash"></span></a></center></td-->
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                            <a href="excel.jsp" class="btn btn-success"><span class="glyphicon glyphicon-save-file"></span> Export to Excel</a>
                        </div>
                    </div>
                </div>
                <!--form action="irAinsertar.jsp" align="center">
                    <button type="submit" class="btn btn-info">Agregar <span class="glyphicon glyphicon-plus-sign"></span></button>
                </form-->
                <div align="center">
                    <a type="button" data-toggle="modal" data-target="#InsertModal" id="InsertButton" class="btn btn-info">Agregar <span class="glyphicon glyphicon-plus-sign"></span></a>
                </div>
            </div>
        </div>
        <!--div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar Datos </h4>
                    </div>
                    <div class="modal-body">
                        ...
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <a href="#" class="btn btn-danger danger">Delete</a>
                    </div>
                </div>
            </div>
        </div-->                                
        <div>            
            <div id="InsertModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Insertar Datos </h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" role="form" action="insertar.jsp">
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
                                    <div class="col-sm-4">
                                        <input type="date" class="form-control" name="fechadocu" required>
                                    </div>
                                    <div class="col-sm-1">
                                    </div>    

                                    <div class="col-sm-4">
                                        <input type="date" class="form-control" name="fechadocu1" required>
                                    </div>

                                </div>

                                <div class="form-group">
                                    <div align="right" class="col-sm-3">
                                        <label>FOLIOS: </label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input type="numeric" class="form-control" name="folios" onkeypress="return permite(event, 'num')" required><br>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div align="right" class="col-sm-3">
                                        <label>DEL N°: </label>
                                    </div>
                                    <div class="col-sm-3">
                                        <input type="numeric" class="form-control" name="rangoinf" onkeypress="return permite(event, 'num')" required=""><br>
                                    </div>
                                    <div align="right" class="col-sm-3">
                                        <label>AL N°: </label>
                                    </div>
                                    <div class="col-sm-3">
                                        <input type="numeric" class="form-control" name="rangosup" onkeypress="return permite(event, 'num')" required><br>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div align="right" class="col-sm-3">
                                        <label>CAJA: </label>
                                    </div>
                                    <div class="col-sm-9">
                                        <input type="numeric" class="form-control" name="caja" onkeypress="return permite(event, 'num')" required=""><br>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div align="right" class="col-sm-3">
                                        <label>PAQUETE: </label><br>
                                    </div>
                                    <div class="col-sm-9">
                                        <input type="numeric" class="form-control" name="paquete" onkeypress="return permite(event, 'num')" required><br>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-sm-3">

                                    </div>
                                    <div class="col-sm-9">
                                        <div class="col-sm-3">
                                            <!--a href="index.jsp" class="btn btn-success"><span class="glyphicon glyphicon-arrow-left"></span> Volver</a-->
                                            <button type="submit" class="btn btn-success btn-sm">Agregar <span class="glyphicon glyphicon-ok"></span></button>
                                        </div>
                                        <div class="col-sm-3">
                                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Cancel <span class="glyphicon glyphicon-thumbs-down"></span></button>                                            
                                        </div>
                                    </div>
                                </div>                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <script>
            $(document).ready(function () {
                $("#InsertButton").click(function () {
                    $("#InsertModal").modal();
                });
                $('#confirm-delete').on('show.bs.modal', function (e) {
                    $(this).find('.danger').attr('href', $(e.relatedTarget).data('href'));
                });
            });
        </script>                                
    </body>
</html>
