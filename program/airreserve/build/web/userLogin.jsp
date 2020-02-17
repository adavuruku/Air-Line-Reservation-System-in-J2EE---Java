<%-- 
    Document   : adminLogin
    Created on : Oct 23, 2019, 3:56:04 PM
    Author     : CENTRE ACADEMIC HEAD
--%>

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
       <%@include file="header.jsp" %>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" style="background:white">
                <h3 style="color:yellow;background-color:grey;padding:10px">Login Users </h3>
                <hr/>
                <form role="form"  name="reg_form"  id="form" class="form-horizontal" action="./login" style="background-color:white; padding:15px" method="POST">
                    <div class="form-group">
                        <label for="userid" class="control-label col-xs-4">User Name <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <input class="form-control" type="text" value="<%= request.getAttribute("userid")%>" id="userid" name="userid" placeholder="Enter Your User Id"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="control-label col-xs-4">PassWord <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <input class="form-control" type="password" value="" id="password" name="password" placeholder="Enter Your Passwod"/>
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
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="background:white">
                 <%@include file="leftNav.jsp" %>
            </div>
        </div>
        <!-- close of container fluid in header file -->
        <%@include file="footer.jsp" %>
    </div>
    </body>
    
</html>
