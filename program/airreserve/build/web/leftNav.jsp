<%-- any content can be specified here e.g.: --%>
<%@page import="entity.availlableFlight"%>
<%@page import="java.util.List"%>

<%--<%@page import="java.util.List"%>
<%@page import="entity.Postrecord"%>--%>
<div style="padding:0px;background:white" class="col-xs-12">
    <h4 style="color:yellow;background-color:grey;padding:10px" > Available Flights </h4>
    
    <%
    @SuppressWarnings("unchecked") 
    List<availlableFlight> resultsnav = (List<availlableFlight>)request.getAttribute("available");
    //System.out.println("EWW");
    if (resultsnav != null) {
        for (availlableFlight result : resultsnav) { %>
            <div class="col-xs-12" style="margin-bottom:5px;background-color: beige;padding-bottom: auto; height: auto">
                    <div class="col-xs-12" class="label-primary" >
                        <h1 style="color:brown;font-weight:bold"><%= result.getOrigin().toUpperCase() %> TO <%= result.getDestination().toUpperCase() %></h1>
                        <p style="color:blue;font-weight:bold">Flight Date : <%= result.getDate()%>  - <%= result.getHour()%>:59:00</p>
                        <p style="color:black;font-weight:bold">Flight Plane : <%= result.getPlane()%>.</p>
                        <a style="color:yellow;font-weight:bold; background-color: blue; text-decoration: none; padding:10px" href="./bookflight?bfid=<%= result.getId()%>"> View Flight </a>
                    </div>
               
            </div>
     <%}%>
     
<%}%>
<h4 style="margin-top:45px;"><a style="color:yellow;font-weight:bold; background-color: grey; text-decoration: none; padding:10px; margin-top:15px;" href="./allflight"> View All Flights </a></h4>
</div>

