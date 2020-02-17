<%-- any content can be specified here e.g.: --%>
<%@ page pageEncoding="UTF-8" %>
<nav id="myNavbar" class="navbar navbar-default navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbarCollapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="./userHome">User Home  </a>
		</div>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="./search" target="_self">Search Airlines Schedules</a></li>
				<li ><a href="./viewAllBlock" target="_self">View All Block Bookings</a></li>
				<li ><a href="./viewAllConfirm" target="_self">View All Confirm Bookings</a></li>
                                <li ><a href="./allflight" target="_self">View All Available Flight</a></li>
                                <li><a href="./logout" target="_self">Sign Out</a></li>
			</ul>
                        <ul class="nav navbar-nav navbar-right">
                            <li style="font-family:due;font-weight:bold" class="active"><a href="#"><% out.print(java.util.Calendar.getInstance().getTime());%></a></li>
                        </ul>
		</div>
	</div>
</nav>
 <%
     HttpSession ses = request.getSession(false);
 %>
<div class="container-fluid">
    <div style="font-family:due;color:brown;padding-bottom:5px;padding-top:5px;background-color:beige" class="jumbotron">
            <h1 style="font-family:due;color:brown;padding:20px;padding-bottom:5px">Nigeria Air Ways Reservation System </h1>
            <h4 style="font-family:due;color:blue;padding-left:20px">Welcome <span style="color:red"><%=ses.getAttribute("adminname")%></span> to Users Control Panel </h4>
    </div>

