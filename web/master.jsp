 <%@page contentType="text/html" import="java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
    
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <head>
        <title>Daily production and dispatch details</title>
         
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
         <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
          <link href="css/style3.css" rel="stylesheet" type="text/css"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%
            SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yyyy");
            String currentDate = sdf.format(new Date());
          %>
    </head>
    <body>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="menu.jsp"><i class="las la-home"></i>Home</a></li>
                <li class="breadcrumb-item"><a href="onlineUsers.jsp"><i class="las la-globe"></i>Online Users</a></li>
                <li class="breadcrumb-item"><a href="view_feed.jsp"><i class="las la-eye"></i>View Production</a></li>
                <li class="breadcrumb-item"><a href="menu.jsp"><i class="las la-edit"></i>Feed Production</a></li>
                <li class="breadcrumb-item"><a href="logout"><i class="las la-sign-out-alt"></i>logout</a></li>  
            </ol>
        </nav>
     <form class="form-inline my-2 my-lg-0 pull-right">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
     </form>

    <center>
        <br>
        <div class="container">
            <br>
            <div class='date float-right font-weight-bold text-info bg-warning'> <i class="las la-calendar"></i> <%= currentDate %> </div>
        </div>  
        <br>
        <br>
        <div class="container" >
    <div class="jumbotron ">
        <h2 class="heading">DAILY PRODUCTION &  DISPATCH DETAILS </h2> 
       
<h2><div data-splitting>ADMIN PANEL</div></h2>
	
    </div>
   </div>
        <br>
         <div class="container">
             <div>
       <table class="table table-bordered table-dark center_align" >
  <thead>
    <tr bgcolor="red";>
      <th scope="col">S.No.</th>
      <th scope="col">Token No.</th>
      <th scope="col">Name</th>
      <th scope="col" class="text-color">DH 14</th>
      <th scope="col" class="text-color">DH 11C</th>
      <th scope="col" class="text-color">DH 11B</th>
      <th scope="col" class="text-color">CP 14</th>
      <th scope="col" class="text-color">CP 11C</th>
      <th scope="col" class="text-color">CP 11B</th>
      <th scope="col" class="text-color">SP I</th>
      <th scope="col" class="text-color">SP II</th>
      <th scope="col" class="text-color">TCP</th>
      <th><div id="delete" class="permissionTag" data-perm="delete">Edit</div></th>
      <th><div id="delete" class="permissionTag" data-perm="delete">Delete</div></th>
       <th><div id="delete" class="permissionTag" data-perm="delete">Password Reset</div></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td><input type="radio" name="name1" /></td>
      <td><input type="radio" name="name1" /></td>
      <td><input type="radio" name="name1" /></td>
      <td><input type="radio" name="name1" /></td>
       <td><input type="radio" name="name1" /></td>
      <td><input type="radio" name="name1" /></td>
      <td><input type="radio" name="name1" /></td>
      <td><input type="radio" name="name1" /></td>
      <td><input type="radio" name="name1" /></td>
       <td><i class="las la-user-edit la-lg"></i></td>
        <td><i class="las la-user-times la-lg"></i></td>
         <td><i class="las la-unlock-alt la-lg"></i></td>
    </tr>
  </tbody>
</table>
             </div>
         </div>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.20.3/TweenMax.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://unpkg.com/splitting/dist/splitting.min.js"></script>
        <script>
    // split text
Splitting(); // => letters are '<div>' wrapped!

// ref obj
var OBJ = 'h2 > div span';

// total nr of letters
var ntCh = OBJ.length;

// cos (index) => y
function curveY(i){
  var n = i / ntCh * 6.24;
  return (Math.cos(n)) * -200;
}

// sin (index) => x
function curveX(i){
  var n = i / ntCh * 6.24;
  return (Math.sin(n)) * -200;
}

// new timeline ref
var tl = new TimelineMax({delay:.5, repeat:-1 });

// color array helper
var arr = ["#008954","#0077be","#a9d046","#00b0f0","#a93056","#ee3338","#f89734","#ffd925","#973989","#cb92a6"];

// ZIGZAG letters 
tl.staggerFrom( OBJ , 1, {
	cycle:{ 
		y:curveY, 
	},
	x:-100, opacity:0
}, .03);
// ZIPPER letters
tl.staggerTo( OBJ , 3, { 
	cycle:{
		y:[-80, 80],
		color: arr,
		skewY:[ 20, -20],
		skewX:[ -20, 20],
	}, 
}, .05, "+=1" );

// sin curve out

tl.staggerTo( OBJ , 2, { 
	cycle: { 
		x: curveY,
		y: curveX, 
	},
	color: "#fff"
}, .03, "+=1" );

</script>
</body>
    
</html>