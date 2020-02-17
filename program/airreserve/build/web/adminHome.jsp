<%-- 
    Document   : index
    Created on : Dec 20, 2018, 6:37:33 PM
    Author     : sherif146
--%>

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
    </head>
    <body style="background:#dddddd">
       <%@include file="adminheader.jsp" %>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" style="background:white">
                <h3 style="color:yellow;background-color:grey;padding:10px">Our Direct Flights</h3>
                <hr/>
                <%
                        int k = 1;
                        @SuppressWarnings("unchecked") 
                        List<flighttype> results = (List<flighttype>)request.getAttribute("allflight");
                        //System.out.println("EWW");
                        if (results != null) {%>
                        <table class="table table-condensed">
                            <thead >
                                <tr>
                                    <th>SNo.</th>
                                    <th>Origin.</th>
                                    <th>Destination.</th>
                                    <th>Description.</th>
                                    <th>Distance (KM).</th>
                                    <th>Duraion (Hrs).</th>
                                    <th>Action</th>
                                </tr>
                            
                            </thead>
                            <tbody>
                                 <%    for (flighttype result : results) {%>
                                        <tr>
                                            <td><%= k %></td>
                                            <td><%= result.getOrigin().toUpperCase() %></td>
                                             <td><%= result.getDestination().toUpperCase() %></td>
                                            <td><%= result.getDescription().toUpperCase() %></td>
                                            <td><%= result.getDistance() %></td>
                                            <td><%= result.getHours()%></td>
                                            <td><a href="./createFlight?fid=<%= result.getId()%>" class="btn btn-primary">Create Flight</a></td>
                                        </tr>
                                  <%k++;}%>
                            </tbody>
                        </table>
                            
                       <%}%>   

            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="background:white">
                 <%@include file="leftNav.jsp" %>
            </div>
        </div>
        <!-- close of container fluid in header file -->
    </div>
    </body>
    <%@include file="footer.jsp" %>
</html>
