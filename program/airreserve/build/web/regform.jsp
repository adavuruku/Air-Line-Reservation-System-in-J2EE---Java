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
       <link rel="stylesheet" type="text/css" href="select2.css"/>
       <script type="text/javascript" src="jquery-3.2.1.js"></script>
       <script type="text/javascript" src="select2.js"></script>
       <script type="text/javascript" src="select2.min.js"></script>
       
    </head>
     <body style="background:#dddddd">
       <%@include file="header.jsp" %>
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8" style="background:white">
                <h3 style="color:yellow;background-color:grey;padding:10px">Create New Account - Visitor</h3>
                <hr/>
                <form role="form"  name="reg_form"  id="form" class="form-horizontal" action="./register" style="background-color:white; padding:15px" method="POST">
                    <div class="form-group">
                        <label for="fname" class="control-label col-xs-4">First Name <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <input class="form-control" type="text" value="<%= request.getAttribute("fname")%>" id="fname" name="fname" placeholder="Enter Your First Name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="oname" class="control-label col-xs-4">Other Name <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <input class="form-control" type="text" value="<%= request.getAttribute("oname")%>" id="oname" name="oname" placeholder="Enter Your Other Names"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="cnum" class="control-label col-xs-4">Credit Card N<u>o</u>. <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <input class="form-control" type="number" value="<%= request.getAttribute("cnum")%>" id="cnum" name="cnum" placeholder="Enter Your Credit Card Number"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="control-label col-xs-4">Choose  A PassWord <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <input class="form-control" type="password" value="" id="password" name="password" placeholder="Enter Your Passwod"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="rtpassword" class="control-label col-xs-4">Re-Type Your PassWord <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <input class="form-control" type="password" value="" id="rtpassword" name="rtpassword" placeholder="RE-Enter Your Passwod"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="age" class="control-label col-xs-4">Age <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <input class="form-control" type="number" value="<%= request.getAttribute("age")%>" id="email" name="age" placeholder="Enter Your Age"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="gender" class="control-label col-xs-4">Select Gender <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <select class="form-control js-example-basic-single" id="gender" name="gender">
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="phone" class="control-label col-xs-4">Phone Number <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <input class="form-control" type="phone" value="<%= request.getAttribute("phone")%>" id="phone" name="phone" placeholder="Enter Your Phone Number"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email" class="control-label col-xs-4">Email Address <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <input class="form-control" type="email" value="<%= request.getAttribute("email")%>" id="email" name="email" placeholder="Enter Your Email Address"/>
                        </div>
                    </div>
                   <div class="form-group">
                        <label for="contact" class="control-label col-xs-4">Contact Address <span style="color:red">*</span> : </label>
                        <div class="col-xs-6">
                            <textarea class="form-control" rows="5" id="contact" name="contact" placeholder="Enter Your Contact Address">
                                <%= request.getAttribute("contact")%>
                            </textarea>
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
    <script type="text/javascript">
        $(document).ready(function() {
                $('.js-example-basic-single').select2();
        });
    </script>
    </body>
   
</html>
