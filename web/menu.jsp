 <!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>DAILY PRODUCTION AND DESPATCH DETAILS</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
          <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
          <link href="css/style.css" rel="stylesheet" type="text/css"/>
          <%
                session = request.getSession(false);
                
                if(session.getAttribute("token") == null)
                {
                    response.sendRedirect("index.html");
                }
                String name =(String)session.getAttribute("name");
                String token =(String)session.getAttribute("token");
            %> 
            
            <% 
                response.setHeader("Pragma","no-cache");
                response.setHeader("Cache-Control","no-store");
                response.setHeader("Expires","0");
                response.setDateHeader("Expires",-1);
               
             %>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    </head>
    <body>
    <div class='container'>
            <div class="row">
                <div class="col-12">
                    <div class="col-3 float-right">
                        <!--<a class="btn btn-danger btn-outline-warning float-right" href="logout" role="button">Logout</a>
                        <label class="badge badge-info badge-pill">Welcome, <%=name%></label>-->
                        <div class="dropdown">
                        <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Welcome, <%=name%>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item">My token No.:<%=token%></a>  
                            <a class="dropdown-item" href="onlineUsers.jsp">Online Users List</a>
                            <a class="dropdown-item" href="logout">Logout</a>  
                        </div>
                      </div>
                    </div>
                </div>
               
            </div>
        </div>
            <br>                
        <div class="container">
            <div class="jumbotron jumbotron-fluid">
                <center><h1><u><font color="#1f0080">DAILY PRODUCTION & DISPATCH DETAILS</font></u></h1></center>

                <br>
                <center>
                   
                    <div class="container">
               
                <!-- Trigger the modal with a button -->
                <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#myModal">PRODUCTION DETAILS</button>

                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            
                             <div class="modal-header">
                                
                                <h4 class="modal-title"><font color="black"><i class="las la-mortar-pestle">   Crushing Plant Department</i></font></h4>
                            </div>
                            <div class="modal-body">
                                <p>
                                   <a href="view_feed.jsp" class="btn btn-danger" role="button" style="margin:25px;">CP-14</a>
                                   <a href="view_feed.jsp" class="btn btn-danger" role="button" style="margin:25px;">CP-11C</a>
                                   <a href="view_feed.jsp" class="btn btn-danger" role="button" style="margin:25px;">CP-11B</a> 
                                </p>
                            </div>
                            
                            <div class="modal-header">
                                
                                <h4 class="modal-title"><font color="black"><i class="las la-warehouse">   Down Hill Department</i></font></h4>
                            </div>
                            <div class="modal-body">
                                <p>
                                    <a href="view_feed.jsp" class="btn btn-danger" role="button" style="margin:25px;">DH-14</a> 
                                    <a href="view_feed.jsp" class="btn btn-danger" role="button" style="margin:25px;">DH-11C</a> 
                                    <a href="view_feed.jsp" class="btn btn-danger" role="button" style="margin:25px;">DH-11B</a> 
                                </p>
                            </div>
                            
                             <div class="modal-header">
                                
                                <h4 class="modal-title"><font color="black"><i class="las la-filter">   Screening Plant Department</i></font></h4>
                            </div>
                            <div class="modal-body">
                                <p>
                                    <a href="view_feed.jsp" class="btn btn-danger" role="button" style="margin:25px;">SP-I</a>
                                    <a href="view_feed.jsp" class="btn btn-danger" role="button" style="margin:25px;">SP-II</a>
                                     <a href="view_feed.jsp" class="btn btn-danger" role="button" style="margin:25px;">TCP</a>
                                </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
                </center>
                <br>
                <center>
                    <a class='btn btn-danger btn-lg' href="MINE CP-14.html" target="_top">DISPATCH DETAILS</a>
                </center>
            </div>
            
        </div>    
       
        <script   src="https://code.jquery.com/jquery-3.4.1.js"   ></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
