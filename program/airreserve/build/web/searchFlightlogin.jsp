<%-- 
    Document   : index
    Created on : Dec 20, 2018, 6:37:33 PM
    Author     : sherif146
--%>



<%@page import="entity.flightsearch"%>
<%@page import="java.util.List"%>
<%@page import="entity.flighttype"%>
<%--<%@page import="java.util.List"%>
<%@page import="entity.Postrecord"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Air Line Reservation System - Nigeria </title>
        
<!--        <link rel="icon" href="img/nainja.jpg" type="image/x-icon"  />
        <link rel="shortcut icon" href="img/nainja.jpg" type="image/x-icon" />-->

        <link rel="stylesheet" type="text/css" href="boot.css"/>
       <link rel="stylesheet" type="text/css" href="bootstrap.min.css"/>
       <link rel="stylesheet" type="text/css" href="select2.css"/>
       <link rel="stylesheet" type="text/css" href="bootstrap-datepicker.css"/>
       <link rel="stylesheet" type="text/css" href="bootstrap-datepicker3.min.css"/>
       <script type="text/javascript" src="jquery-3.2.1.js"></script>
       <script type="text/javascript" src="select2.js"></script>
       <script type="text/javascript" src="select2.min.js"></script>
       <script type="text/javascript" src="bootstrap-datepicker.js"></script>
    </head>
    <body style="background:#dddddd">
       <%@include file="userheader.jsp" %>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-9 col-lg-9" style="background:white">
                <div class="col-xs-12">
                    <h3 style="color:yellow;background-color:grey;padding:10px">.:. SEARCH FOR AVAILABLE FLIGHTS .:.</h3>
                    <hr/>
                    <form role="form"  name="reg_form"  id="form" class="form-horizontal" action="./search" style="background-color:white; padding:15px" method="POST">

                        <div class="form-group">
                            <label for="origin" class="control-label col-xs-4">ORIGIN CITY <span style="color:red">*</span> : </label>
                            <div class="col-xs-6">
                                <select class="form-control js-example-basic-single" id="origin" name="origin">
                                    <option value="Abuja">Abuja</option>
                                    <option value="Jos">Jos</option>
                                    <option value="Kano">Kano</option>
                                    <option value="Rivers">Rivers</option>
                                </select>
                            </div>
                        </div> 

                        <div class="form-group">
                            <label for="destination" class="control-label col-xs-4">DESTINATION CITY <span style="color:red">*</span> : </label>
                            <div class="col-xs-6">
                                <select class="form-control js-example-basic-single" id="destination" name="destination">
                                    <option value="Abuja">Abuja</option>
                                    <option value="Jos">Jos</option>
                                    <option value="Kano">Kano</option>
                                    <option value="Rivers">Rivers</option>
                                    <option value="Bauchi">Bauchi</option>
                                    <option value="Enugu">Enugu</option>
                                    <option value="Oyo">Oyo</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group" style="margin-top:25px">
                            <label for="txtdatefrom" class="control-label col-xs-4">Date From : <span style="color:red">*</span> : </label>
                            <div class="col-xs-6">
                                <div class="input-group date" data-provide="datepicker">

                                        <input type="text" class="form-control"  id="txtdatefrom" name="txtdatefrom" value="" required="true" />
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group" style="margin-top:25px">
                            <label for="txtdateto" class="control-label col-xs-4">Date To : <span style="color:red">*</span> : </label>
                            <div class="col-xs-6">
                                <div class="input-group date" data-provide="datepicker">

                                        <input type="text" class="form-control"  id="txtdateto" name="txtdateto" value="" required="true" />
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="control-label col-xs-4"></label>
                            <div class="col-xs-6">
                                <p style="color:red"><%= request.getAttribute("error")%></p>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="control-label col-xs-4" style="color:red"></label>
                            <div class="col-xs-6">
                                <input type="submit" class="btn btn-large btn-primary" value="Submit Details" />
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-xs-12">
                    <%
                        int k = 1;
                        @SuppressWarnings("unchecked") 
                        List<flightsearch> results = (List<flightsearch>)request.getAttribute("allResult");
   
                        if (results != null) {%>
                            <table style="font-size:22px; font-weigth:bold;" class="table table-bordered table-condensed table-responsive table-hover">
                            <thead >
                                <tr style="background-color: grey;color:yellow">
                                    <th>SNo.</th>
                                    <th>ORIGIN CITY</th>
                                    <th>DESTINATION CITY</th>
                                    <th>DEPARTURE DATE / TIME</th>
                                    <th>DISTANCE / HOURS</th>
                                    <th>NEAREST CITY DIST.</th>
                                    <th></th>
                                    <th></th> 
                                    <th></th> 
                                </tr>
                            </thead>
                            <tbody>
                             <%for (flightsearch result : results) { 

                             %>
                                <tr>
                                    <td COLSPAN="5"></td>
                                </tr>
                                <tr>
                                    <td><%=k%></td>
                                    <td><%=result.getOrigin()%></td>
                                    <td><%=result.getDestination()%></td>
                                    <td><%=result.getDate()%> / <%=result.getDhours()%>:59:00</td>
                                    <td><%=result.getDistance()%> KM / <%=result.getHour()%> Hrs.</td>
                                    <%if(result.getNoDays() <= 0){%>
                                        <td> - </td>
                                    <%}else{%>
                                        <td><%=result.getDestination()%> Is  <%=result.getDistanceFromOrigin()%> KM FROM <%=result.getActualDest()%>.</td>
                                    <%}%>
                                    
                                    <td><a class="btn btn-primary" style="color:yellow;font-weight:bold;  text-decoration: none; padding:10px;" href="./bookflight?bfid=<%=result.getId()%>">View</a></td>
                                    <td><a class="btn btn-success" style="color:yellow;font-weight:bold; text-decoration: none; padding:10px;" href="./confirmblock?bfid=<%=result.getId()%>&type=confirm">Confirm</a></td>
                                    <%if(result.getNoDays() < 14){%>
                                        <td></td>
                                    <%}else{%>
                                        <td><a class="btn btn-danger" style="color:yellow;font-weight:bold; text-decoration: none; padding:10px;" href="./confirmblock?bfid=<%=result.getId()%>&type=block">Block</a></td>
                                    <%}%>
                                </tr>
                              <%k++;}%>  
                            </tbody>
                        </table>
                                
                       <%}%>   
                </div>
                
            </div>
            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3" style="background:white">
                 <%@include file="leftNav.jsp" %>
            </div>
        </div>
        <!-- close of container fluid in header file -->
    </div>
    <script type="text/javascript">
            $(document).ready(function() {
                    $('.js-example-basic-single').select2();
                    
                    $('.date').datepicker({
                        format: 'yyyy/mm/dd',
                        startDate: '0d'
                    });
            });
    </script>
    <%@include file="footer.jsp" %>
    </body>
    
</html>
