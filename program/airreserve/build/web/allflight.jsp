<%-- 
    Document   : index
    Created on : Dec 20, 2018, 6:37:33 PM
    Author     : sherif146
--%>

<%@page import="entity.availlableFlight"%>
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

       <link rel="stylesheet" type="text/css" href="bootstrap-theme.css"/>
        <link rel="stylesheet" type="text/css" href="boot.css"/>
    </head>
    <body style="background:#dddddd">
       <%@include file="header.jsp" %>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="background:white">
                <h3 style="color:yellow;background-color:grey;padding:10px">Our Direct Flights</h3>
                <hr/>
                <%
                        int k = 1;
                        @SuppressWarnings("unchecked") 
                        List<availlableFlight> resultsnav = (List<availlableFlight>)request.getAttribute("available");
                        //System.out.println("EWW");
                        if (resultsnav != null) {
                            for (availlableFlight result : resultsnav) { %>
     
                            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                <div class="panel panel-primary" style="background-color: beige;">
                                    <div class="panel-body" style="color:white;font-weight:bold">
                                        <h1 style="color:brown;font-weight:bold"><%= result.getOrigin().toUpperCase() %> TO <%= result.getDestination().toUpperCase() %></h1>
                                        <p style="color:blue;font-weight:bold">Flight Date : <%= result.getDate()%>  - <%= result.getHour()%>:59:00</p>
                                        <p style="color:black;font-weight:bold">Flight Plane : <%= result.getPlane()%>.</p>
                                        <a style="color:yellow;font-weight:bold; background-color: blue; text-decoration: none; padding:10px" href="./bookflight?bfid=<%= result.getId()%>"> View Flight </a>
                                    </div>
                                </div>
                               
                            </div>
                         <%}}%>   

            </div>
            
        </div>
        <!-- close of container fluid in header file -->
         <%@include file="footer.jsp" %>
    </div>
    </body>
</html>
