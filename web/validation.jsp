 <!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>DAILY PRODUCTION AND DISPATCH DETAILS</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
          <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
          <link href="css/style.css" rel="stylesheet" type="text/css"/>
       
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    </head>
    <body>
            <br> 
            <br>
        <div class="container">
            <div class="jumbotron jumbotron-fluid">
                <center><h2><u><font color="#1f0080">DAILY PRODUCTION DETAILS</font></u></h2></center>
                <br>
                <center>
                    <div class="container">
                        <label> Please enter the password provided:</label><br>
                        <form action="javascript:alert( 'validating password...Please press Ok!' );">
                            <div>
                                <input type="password" id="Password" name="password" class="form-control" data-toggle="password" required>
                                <br>   
                                <button type="submit" name="button" class='btn btn-primary btn-lg'>Login</button>
                                <br>
                                <hr>
                                <i class="las la-angle-double-left"></i> &nbsp;<a  href="view_feed.jsp">Go Back</a>
                                <br>
                                <i class="las la-angle-double-left"></i> &nbsp;<a  href="master.jsp">master</a>
                            </div>
                       </form>
                </center>    
            </div>
        </div>
            <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-show-password/1.0.3/bootstrap-show-password.min.js"></script>
            
             <script type="text/javascript">
                 
                        $("#password").password('toggle');
                        
                        $( "form" ).submit(function( event ) {
                         if ( $( "input" ).val() === "dh14pass" ) {
                           window.location.href = "DH-14.jsp";
                           return;
                         }
                         else if ( $( "input" ).val() === "dh11cpass" ) {
                           window.location.href = "DH-11C.jsp";
                           return;
                         }
                          else if ( $( "input" ).val() === "dh11bpass" ) {
                           window.location.href = "DH-11B.jsp";
                           return;
                         }
                          else if ( $( "input" ).val() === "cp14pass" ) {
                           window.location.href = "MINE CP-14.jsp";
                           return;
                         }
                          else if ( $( "input" ).val() === "cp11cpass" ) {
                           window.location.href = "MINE CP-11C.jsp";
                           return;
                         }
                          else if ( $( "input" ).val() === "cp11bpass" ) {
                           window.location.href = "MINE CP-11B.jsp";
                           return;
                         }
                          else if ( $( "input" ).val() === "sp1pass" ) {
                           window.location.href = "SP_I.jsp";
                           return;
                         }
                          else if ( $( "input" ).val() === "sp2pass" ) {
                           window.location.href = "SP_II.jsp";
                           return;
                         }
                          else if ( $( "input" ).val() === "tcppass" ) {
                           window.location.href = "TCP.jsp";
                           return;
                         }
                         else{  
                            window.location.href = "validation.jsp";
                            alert("Wrong password!!!");
                            
                         }
 
                       });
                       
            </script>
       
        <script   src="https://code.jquery.com/jquery-3.4.1.js"   ></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
