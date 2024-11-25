<%@page import="Database.DBQuery"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title><%=Logic.info.pname%></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="css/css.css" rel="stylesheet">

    <link rel="stylesheet" href="css/font-awesome.min.css">
 
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/style.css">
      <script type="text/javascript">
     function add_doc(){
                var list = "";
                 var li=[];
                var ch=document.getElementById("lstDocID").value;
                if(ch==='Select')
                {
                    alert("Please Select Atleast one doctor");
                    
                }
                else{
                //alert(ch);
                var index=0;
                var nlist="";
                list=document.getElementById("docs").value;
               // alert(list);
                if(list.length!==0)
                {
                li=list.split(",");
                }
               // alert("li value= "+li);
               // alert("li len= "+li.length);
                var flag=false;
                for(var i=0;i<li.length;i++)
                {
                    
                    if(ch===li[i])
                    {
                       index=i;
                      // alert("same");   
                      flag=true;  
                    }
                    else{
                     //  alert("not same");   
                        
                    }
                }
              //  alert("flag="+flag)
                if(flag===false)
                {
                   //  alert("to be added "+ch);
                     list+=ch+",";
                   //  alert("new list "+list);
                     
//                    list+=ch+",";
                     document.getElementById("docs").value=list;
                }
                else{
                    for(var j=0;j<li.length-1;j++)
                    {
                       // alert("index="+index);
                     //   alert("li[ "+j+" ]=="+li[j]);
                        if(j!==index)
                        {
                         nlist+=li[j]+",";
                      //   alert("new nlist "+nlist);
                        }
                        else{
                            
                            nlist+="";
                          //  alert("remove  "+li[j]);
                        }
                    }
                    document.getElementById("docs").value=nlist;
                    
                }

            }
            }
            </script>
  </head>
  <%
            String msg = "";
            if (session.getAttribute("msg") != null) {
                msg = session.getAttribute("msg").toString();
            } else {
                msg = "";
            }
String uname = "";
            if (session.getAttribute("uname") != null) {
                uname = session.getAttribute("uname").toString();
            } else {
                uname = "";
            }

        %>
  <body>
  	<div class="top py-1">
  		<div class="container">
  			<div class="row">
	    		<div class="col d-flex align-items-center">
	    			<p class="mb-0"><a href="#">ipfs_healthcare@email.com</a> | <a href="#">Help Desk</a> | </p>
	    		</div>
	    		<div class="col-4 d-flex justify-content-end">
	    			<div class="social-media">
			    		<p class="mb-0 d-flex">
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
			    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
			    		</p>
		        </div>
	    		</div>
	    	</div>
  		</div>
  	</div>
		<div class="wrap">
	    <div class="container">
				<div class="row justify-content-between">
					<div class="col-md-3 mb-md-0 mb-4 d-flex align-items-center">
						<a class="navbar-brand" href="index.jsp"><%=Logic.info.pname%></a>
					</div>
					<div class="col-md-7">
						<div class="row">
							<div class="col-md-8 mb-md-0 mb-3">
								<div class="top-wrap d-flex">
									<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-location-arrow"></span></div>
									<div class="text"><span>Address</span><span>BTM 2nd Stage Bangalore</span></div>
								</div>
							</div>
							<div class="col">
								<div class="top-wrap d-flex">
									<div class="icon d-flex align-items-center justify-content-center"><span class="fa fa-phone"></span></div>
									<div class="text"><span>Call us</span><span>(+01) 123 456 7890</span></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="fa fa-bars"></span> Menu
	      </button>
<!--				<div class="order-lg-last">
          <a href="#" class="btn btn-primary">Make an appointment</a>
        </div>-->
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active"><a href="hospital_home.jsp" class="nav-link">Home</a></li>
	        	<li class="nav-item"><a href="doctor_registration.jsp" class="nav-link">Add Doctor</a></li>
	        	<li class="nav-item"><a href="user_registration.jsp" class="nav-link">Add Patient</a></li>

	        	<li class="nav-item"><a href="index.jsp" class="nav-link">Logout</a></li>
	        	
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="hospital_home.jsp">Home <i class="fa fa-chevron-right"></i></a></span> <span><%=Logic.info.pname%> <i class="fa fa-chevron-right"></i></span></p>
            <h1 class="mb-0 bread"><%=Logic.info.pname%></h1>
          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section bg-light">
    	<div class="container">
    		<div class="row justify-content-center">
    			<div class="col-md-12">
						
					</div>
					<div class="col-md-12">
						<div class="wrapper">
							<div class="row no-gutters">
								<div class="col-md-7 d-flex">
									<div class="contact-wrap w-100 p-md-5 p-4">
										<h3 class="mb-4">Add Patient Details</h3>
										<form action="./UserRegistration" method="POST" id="contactForm" class="contactForm">
                                                                                    <input type="hidden" name="utype" value="user">
											<div class="row">
												<div class="col-md-6">
													<div class="form-group">
														<input type="text" class="form-control" name="txtFname" id="txtFName" placeholder="First Name" required>
													</div>
												</div>
                                                                                                <div class="col-md-6">
													<div class="form-group">
														<input type="text" class="form-control" name="txtLName" id="txtLName" placeholder="Last Name" required>
													</div>
												</div>
												<div class="col-md-6"> 
													<div class="form-group">
														<input type="email" class="form-control" name="email" id="email" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" title="Insert valid email id" required>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<input type="text" class="form-control" name="txtPhone" id="mob" placeholder="Contact Number" pattern="[6789][0-9]{9}" title="Mobile No should start with 6/7/8/9 and 10 digit" required>
													</div>
												</div>
                                                                                            <div class="col-md-12">
													<div class="form-group">
														<textarea name="txtAddress" class="form-control" id="message" cols="30" rows="7" placeholder="Address"></textarea>
													</div>
												</div>
                                                                                                <div class="col-md-6">
													<div class="form-group">
														Doctor <select name="lstDocID" id="lstDocID" onChange="return add_doc();">
                                                                                                    <option value="None">--None--</option>
                                                                                                        <%
                                                                                                            DBQuery db = new DBQuery();
                                                                                                            int[] docIDArr = db.getDocIds(uname);
                                                                                                            String[] docNamesArr = db.getDocNames(uname);

                                                                                                            for(int i = 0; i<docIDArr.length; i++){%>
                                                                                                            <option value="<%= docIDArr[i]%>"><%= docNamesArr[i]%></option>
                                                                                                        <%}%>

                                                                                                </select>
													</div>
												</div>
												
                                                                                            
                                                                                                        <div class="col-md-12">
													<div class="form-group">
														Doctors:<input type="text" class="form-control" name="docs" id="docs" placeholder="Doctors" required>
													</div>
												</div>
                                                                                                        <div class="col-md-12">
													<div class="form-group">
														Date of Admission:<input type="date" class="form-control" name="txtAdmsnDate" id="txtAdmsnDate" >
													</div>
												</div>
                                                                                                        <div class="col-md-12">
													<div class="form-group">
														Blood Group:<select name="lstBldGrp" id="bggroup">
                                        <option>Select Blood Group</option><option>O-</option><option>O+</option><option>A-</option><option>A+</option><option>B-</option><option>B+</option><option>AB-</option><option>AB+</option> </select>
                                    
													</div>
												</div>
                                                                                            <div class="col-md-12">
													<div class="form-group">
														<input type="password" class="form-control" name="pass" id="pass" placeholder="Password"  required>
													</div>
												</div>
                                                                                            <div class="col-md-12">
													<div class="form-group">
														<input type="password" class="form-control" name="cpass" id="cpass" placeholder="Confirm Password"  required>
													</div>
												</div>
												<div class="col-md-12">
													<div class="form-group">
														<input type="submit" value="Signup" class="btn btn-primary">
														<div class="submitting"></div>
													</div>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="col-md-5 d-flex align-items-stretch">
									<div class="info-wrap bg-primary w-100 p-lg-5 p-4">
										<h3 class="mb-4 mt-md-4">Contact us</h3>
					        	<div class="dbox w-100 d-flex align-items-start">
					        		<div class="icon d-flex align-items-center justify-content-center">
					        			<span class="fa fa-map-marker"></span>
					        		</div>
					        		<div class="text pl-3">
						            <p><span>Address:</span> 198 West 21th Street, Suite 721 New York NY 10016</p>
						          </div>
					          </div>
					        	<div class="dbox w-100 d-flex align-items-center">
					        		<div class="icon d-flex align-items-center justify-content-center">
					        			<span class="fa fa-phone"></span>
					        		</div>
					        		<div class="text pl-3">
						            <p><span>Phone:</span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
						          </div>
					          </div>
					        	<div class="dbox w-100 d-flex align-items-center">
					        		<div class="icon d-flex align-items-center justify-content-center">
					        			<span class="fa fa-paper-plane"></span>
					        		</div>
					        		<div class="text pl-3">
						            <p><span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
						          </div>
					          </div>
					        	<div class="dbox w-100 d-flex align-items-center">
					        		<div class="icon d-flex align-items-center justify-content-center">
					        			<span class="fa fa-globe"></span>
					        		</div>
					        		<div class="text pl-3">
						            <p><span>Website</span> <a href="#">yoursite.com</a></p>
						          </div>
					          </div>
				          </div>
								</div>
							</div>
						</div>
					</div>
				</div>
    	</div>
    </section>

      <footer class="footer ftco-section ftco-no-pt">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-6 col-lg">
            <div class="ftco-footer-widget py-4 py-md-5">
              <h2 class="logo"><a href="#"><%=Logic.info.pname%></a></h2>
              <p>Secured Healthcare</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-4">
                <li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg">
            <div class="ftco-footer-widget ml-md-5 py-5">
              <h2 class="ftco-heading-2">Services</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Healthcare</a></li>
                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>Blockchain</a></li>
                <li><a href="#" class="py-1 d-block"><span class="fa fa-check mr-3"></span>IPFS</a></li>

              </ul>
            </div>
          </div>
          <div class="col-md-6 col-lg">
            <div class="ftco-footer-widget py-4 py-md-5">
            	<h2 class="ftco-heading-2">Contact information</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon fa fa-map-marker"></span><span class="text">BTM 2nd Stage, Bangalore</span></li>
	                <li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+91 123 456 7890</span></a></li>
	                <li><a href="#"><span class="icon fa fa-paper-plane"></span><span class="text">info@ipfs.com</span></a></li>
	              </ul>
	            </div>
            </div>
          </div>
          <div class="col-md-6 col-lg">
             <div class="ftco-footer-widget bg-primary p-4 py-5">
              <h2 class="ftco-heading-2">Business Hours</h2>
              <div class="opening-hours">
              	<h4>Opening Days:</h4>
              	<p class="pl-3">
              		<span>Monday ? Friday : 9am to 20 pm</span>
              		<span>Saturday : 9am to 17 pm</span>
              	</p>
              	<h4>Vacations:</h4>
              	<p class="pl-3">
              		<span>All Sunday Days</span>
              		<span>All Official Holidays</span>
              	</p>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved </a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>