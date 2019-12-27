<%@page contentType="text/html" import="java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Daily production and dispatch details</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%
            SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yyyy");
            String currentDate = sdf.format(new Date());
        %>
    </head>
    <body>


        <nav class="navbar navbar-expand navbar-dark bg-dark"> <a href="#menu-toggle" id="menu-toggle" class="navbar-brand"><span class="navbar-toggler-icon"></span></a> <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample02" aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
            <div class="collapse navbar-collapse" id="navbarsExample02">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item"> <a class="nav-link" href="menu.jsp">Home <span class="sr-only">(current)</span></a> </li>
                    <li class="nav-item"> <a class="nav-link" href="validation.jsp">Feed Production</a> </li>
                    <li class="nav-item"> <a class="nav-link" href="help.jsp">Help</a> </li>
                </ul>
                <form class="form-inline my-2 my-md-0"> </form>
            </div>
        </nav>

    <center>

        <img src="./images/logo.png" class="brand_logo" alt="Logo">

    </center>	

    <h2 class="heading">DAILY PRODUCTION DETAILS</h2> 

    <div id="bounce"> <h2 class="heading">Production Summary</h2> </div>

    <div class="container">
        <div class='date float-right font-weight-bold text-info bg-warning'> <i class="las la-calendar"></i> <%= currentDate%> </div>
    </div>  
    <br>
    <div class='container jumbotron jumbotron-fluid' style="background-color:#434748;">

        <div class="label label-default"><h3>Down Hill</h3></div>    
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>PRODUCTION</th>
                    <th>SHIFT I</th>
                    <th>SHIFT II</th>
                    <th>SHIFT III</th>
                    <th>ON-DATE</th>
                    <th>CUM.</th>
                </tr>
            </thead>
            <tbody>

                <tr id="Dh_color1"> 
                    <td>DH-14</td>
                    <td><input type="number" id="feed_I" name="Feed-I" shift='I' value="" pattern="^\d*$"  title="Feed - I" disabled>
                    </td>
                    <td><input type="number" id="feed_II"  name="Feed-II" shift='II' value="" pattern="^\d*$"  title="Feed - II" disabled>
                    </td>
                    <td><input type="number" id="feed_III" name="Feed-II" shift='III' value="" pattern="^\d*$"  title="Feed -  III" disabled>
                    </td>
                    <td> <input type="number" id="feed_onDate" name="Feed-onDate"  title="Feed - ON-DATE" disabled  > </td>
                    <td> <input type="number" id="feed_cumm" name="Feed-cum"  title="Feed - CUM" disabled  > </td>
                </tr>

                <tr id="Dh_color2">
                    <td>DH-11C</td>
                    <td><input type="number" id="feed_I" name="Feed-I" shift='I' value="" pattern="^\d*$"  title="Feed - I" disabled>
                    </td>
                    <td><input type="number" id="feed_II"  name="Feed-II" shift='II' value="" pattern="^\d*$"  title="Feed - II" disabled>
                    </td>
                    <td><input type="number" id="feed_III" name="Feed-II" shift='III' value="" pattern="^\d*$"  title="Feed -  III" disabled>
                    </td>
                    <td> <input type="number" id="feed_onDate" name="Feed-onDate" title="Feed - ON-DATE" disabled  > </td>
                    <td> <input type="number" id="feed_cumm" name="Feed-cum" title="Feed - CUM" disabled  > </td>
                </tr>
                <tr id="Dh_color3">
                    <td>DH-11B</td>
                    <td><input type="number" id="feed_I" name="Feed-I" shift='I' value="" pattern="^\d*$"  title="Feed - I" disabled>
                    </td>
                    <td><input type="number" id="feed_II"  name="Feed-II" shift='II' value="" pattern="^\d*$"  title="Feed - II" disabled>
                    </td>
                    <td><input type="number" id="feed_III" name="Feed-II" shift='III' value="" pattern="^\d*$"  title="Feed -  III" disabled>
                    </td>
                    <td> <input type="number" id="feed_onDate" name="Feed-onDate"  title="Feed - ON-DATE" disabled  > </td>
                    <td> <input type="number" id="feed_cumm" name="Feed-cum"  title="Feed - CUM" disabled  > </td>
                </tr>  

            </tbody>     
        </table>
        <div class="label label-default"><h3>Crushing Plant</h3></div> 
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>PRODUCTION</th>
                    <th>SHIFT I</th>
                    <th>SHIFT II</th>
                    <th>SHIFT III</th>
                    <th>ON-DATE</th>
                    <th>CUM.</th>
                </tr>
            </thead>
            <tbody>


                <tr id="cp_color1">
                    <td>Mine CP-14</td>
                    <td><input type="number" id="feed_I" name="Feed-I" shift='I' value="" pattern="^\d*$"  title="Feed - I" disabled>
                    </td>
                    <td><input type="number" id="feed_II"  name="Feed-II" shift='II' value="" pattern="^\d*$"  title="Feed - II" disabled>
                    </td>
                    <td><input type="number" id="feed_III" name="Feed-II" shift='III' value="" pattern="^\d*$"  title="Feed -  III" disabled>
                    </td>
                    <td> <input type="number" id="feed_onDate" name="Feed-onDate" title="Feed - ON-DATE" disabled  > </td>
                    <td> <input type="number" id="feed_cumm" name="Feed-cum"  title="Feed - CUM" disabled  > </td>
                </tr>
                <tr id="cp_color2">
                    <td>Mine CP-11C</td>
                    <td><input type="number" id="feed_I" name="Feed-I" shift='I' value="" pattern="^\d*$"  title="Feed - I" disabled>
                    </td>
                    <td><input type="number" id="feed_II"  name="Feed-II" shift='II' value="" pattern="^\d*$"  title="Feed - II" disabled>
                    </td>
                    <td><input type="number" id="feed_III" name="Feed-II" shift='III' value="" pattern="^\d*$"  title="Feed -  III" disabled>
                    </td>
                    <td> <input type="number" id="feed_onDate" name="Feed-onDate" title="Feed - ON-DATE" disabled  > </td>
                    <td> <input type="number" id="feed_cumm" name="Feed-cum"  title="Feed - CUM" disabled  > </td>
                </tr>
                <tr id="cp_color3">
                    <td>Mine CP-11B</td>
                    <td><input type="number" id="feed_I" name="Feed-I" shift='I' value="" pattern="^\d*$"  title="Feed - I" disabled>
                    </td>
                    <td><input type="number" id="feed_II"  name="Feed-II" shift='II' value="" pattern="^\d*$"  title="Feed - II" disabled>
                    </td>
                    <td><input type="number" id="feed_III" name="Feed-II" shift='III' value="" pattern="^\d*$"  title="Feed -  III" disabled>
                    </td>
                    <td> <input type="number" id="feed_onDate" name="Feed-onDate"  title="Feed - ON-DATE" disabled  > </td>
                    <td> <input type="number" id="feed_cumm" name="Feed-cum"  title="Feed - CUM" disabled  > </td>
                </tr>

            </tbody>     
        </table>
        <div class="label label-default"><h3>Screening Plant</h3></div> 
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>PRODUCTION</th>
                    <th>SHIFT I</th>
                    <th>SHIFT II</th>
                    <th>SHIFT III</th>
                    <th>ON-DATE</th>
                    <th>CUM.</th>
                </tr>
            </thead>
            <tbody>

                <tr id="sp1_color">
                    <td>SP-I</td>
                    <td><input type="number" id="feed_I" name="Feed-I" shift='I' value="" pattern="^\d*$"  title="Feed - I" disabled>
                    </td>
                    <td><input type="number" id="feed_II"  name="Feed-II" shift='II' value="" pattern="^\d*$"  title="Feed - II" disabled>
                    </td>
                    <td><input type="number" id="feed_III" name="Feed-II" shift='III' value="" pattern="^\d*$"  title="Feed -  III" disabled>
                    </td>
                    <td> <input type="number" id="feed_onDate" name="Feed-onDate"  title="Feed - ON-DATE" disabled  > </td>
                    <td> <input type="number" id="feed_cumm" name="Feed-cum"  title="Feed - CUM" disabled  > </td>
                </tr>
                <tr id="sp2_color">
                    <td>SP-II</td>
                    <td><input type="number" id="feed_I" name="Feed-I" shift='I' value="" pattern="^\d*$"  title="Feed - I" disabled>
                    </td>
                    <td><input type="number" id="feed_II"  name="Feed-II" shift='II' value="" pattern="^\d*$"  title="Feed - II" disabled>
                    </td>
                    <td><input type="number" id="feed_III" name="Feed-II" shift='III' value="" pattern="^\d*$"  title="Feed -  III" disabled>
                    </td>
                    <td> <input type="number" id="feed_onDate" name="Feed-onDate" title="Feed - ON-DATE" disabled  > </td>
                    <td> <input type="number" id="feed_cumm" name="Feed-cum"  title="Feed - CUM" disabled  > </td>
                </tr>
                <tr id="tcp_color">
                    <td>TCP</td>
                    <td><input type="number" id="feed_I" name="Feed-I" shift='I' value="" pattern="^\d*$"  title="Feed - I" disabled>
                    </td>
                    <td><input type="number" id="feed_II"  name="Feed-II" shift='II' value="" pattern="^\d*$"  title="Feed - II" disabled>
                    </td>
                    <td><input type="number" id="feed_III" name="Feed-II" shift='III' value="" pattern="^\d*$"  title="Feed -  III" disabled>
                    </td>
                    <td> <input type="number" id="feed_onDate" name="Feed-onDate"  title="Feed - ON-DATE" disabled  > </td>
                    <td> <input type="number" id="feed_cumm" name="Feed-cum"     title="Feed - CUM" disabled  > </td>
                </tr>
            </tbody>     
        </table>
    </div>
    <footer>
        <center>
            <p>developer: nmdc@c&it</p>
        </center>
    </footer>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>