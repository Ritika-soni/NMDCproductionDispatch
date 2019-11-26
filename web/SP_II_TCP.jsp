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
         
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
         <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%
            SimpleDateFormat sdf = new SimpleDateFormat("dd-MMM-yyyy");
            String currentDate = sdf.format(new Date());
          %>
    </head>
    <body>
        <h2 class="heading">DAILY PRODUCTION DETAILS </h2> 
        <h2 class="heading"> <center> SCREENING PLANT - II/TCP <center> </h2>
        <div class="container">
            <div class='date float-right font-weight-bold text-info bg-warning'><%= currentDate %> </div>
        </div>  
         <div class='container'>
          <div class>
              
           <div class="label label-default"><h3>Production</h3></div> 
        <table class="table" id='tblProduction'>
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
             <tr>
                <td>LUMP</td>
                <td><input type="number" id="lump_I" name="LUMP-I" placeholder='LUMP -  I' shift='I' value="" pattern="^\d*$"  title="LUMP-  I" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="lump_II"  name="LUMP-II" placeholder='LUMP -  II' shift='II' value="" pattern="^\d*$"  title="LUMP -  II" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="lump_III"  name="LUMP-III" placeholder='LUMP -  III' shift='III' value="" pattern="^\d*$"  title="LUMP -  III" onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="lump_onDate" name="LUMP-ON DATE" placeholder='LUMP - ON-DATE'  title="LUMP - ON-DATE"  disabled ></td>
                <td><input type="number" id="lump_cumm" name="LUMP-CUM"  placeholder='LUMP -  CUM'  title="LUMP -  CUM" disabled  ></td>
            </tr>
            <tr>
                <td>FEED</td>
                <td><input type="number" id="feed_I"  name="FEED-I" placeholder='FEED -  I' shift='I' value="" pattern="^\d*$"  title="FEED -  I" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="feed_II" name="FEED-II" placeholder='FEED -  II' shift='II' value="" pattern="^\d*$"  title="FEED -  II" onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="feed_III" name="FEED-III" placeholder='FEED -  III' shift='III' value="" pattern="^\d*$"  title="FEED -  III" onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="feed_onDate" name="FEED-ON-DATE" placeholder='FEED-  ON-DATE'  title="FEED -  ON-DATE"  disabled ></td>
                <td><input type="number" id="feed_cumm" name="FEED-CUM" placeholder='FEED -  CUM'  title="FEED -  CUM" disabled  ></td>
            </tr>
                 <tr>
                <td>FINE</td>
                <td><input type="number" id="fine_I" name="FINE-I" placeholder='FINE -  I' shift='I' value="" pattern="^\d*$"  title="FINE -  I" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="fine_II" name="FINE-II" placeholder='FINE -  II' shift='II' value="" pattern="^\d*$"  title="FINE -  II" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="fine_III" name="FINE-III" placeholder='FINE -  III' shift='III' value="" pattern="^\d*$"  title="FINE  -  III" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="fine_onDate" name="FINE-ON-DATE" placeholder='FINE -  ON-DATE'   title="FINE -  ON-DATE" disabled ></td>
                <td><input type="number" id="fine_cumm" name="FINE-CUM" placeholder='FINE -  CUM'   title="FINE -  CUM" disabled  ></td>
            </tr>
            <tr>
                <td>NPO(707)</td>
                <td><input type="number" id="npo_I" name="NPO(707)-I" placeholder='NPO(707) -  I' shift='I' value="" pattern="^\d*$"  title="NPO(707) -  I" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number"  id="npo_II" name="NPO(707)-II" placeholder='NPO(707) -  II' shift='II' value="" pattern="^\d*$"  title="NPO(707) -  II" onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number"  id="npo_III"   name="NPO(707)-III" placeholder='NPO(707) -  III' shift='III' value="" pattern="^\d*$"  title="NPO(707)  -  III" onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number"  id="npo_onDate"   name="NPO(707)-ON-DATE" placeholder='NPO(707) -  ON-DATE'  title="NPO(707) -  ON-DATE" disabled ></td>
                <td><input type="number"  id="npo_cumm"   name="NPO(707)-CUM" placeholder='NPO(707) -  CUM'   title="NPO(707) -  CUM" disabled  ></td>
            </tr>
            <tr>
                <td>B.L Sized Ore</td>
                <td><input type="number" id="bl_sized_ore_I" name="B.L Sized Ore-I" placeholder='B.L Sized Ore -  I' shift='I' value="" pattern="^\d*$"  title="B.L Sized Ore -  I" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="bl_sized_ore_II" name="B.L Sized Ore-II" placeholder='B.L Sized Ore -  II' shift='II' value="" pattern="^\d*$"  title="B.L Sized Ore -  II" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="bl_sized_ore_III" name="B.L Sized Ore-III" placeholder='B.L Sized Ore -  III' shift='III' value="" pattern="^\d*$"  title="B.L Sized Ore -  III" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="bl_sized_ore_onDate" name="B.L Sized Ore-ON-DATE" placeholder='B.L Sized Ore -  ON-DATE'  title="B.L Sized Ore -  ON-DATE"  disabled ></td>
                <td><input type="number" id="bl_sized_ore_cumm" name="B.L Sized Ore-CUM" placeholder='B.L Sized Ore -  CUM'   title="B.L Sized Ore -  CUM"  disabled ></td>
            </tr>
            <tr>
                <td>315 SIDING</td>
                <td><input type="number" id="siding_I" name="315 SIDING-I" placeholder='315 SIDING -  I' shift='I' value="" pattern="^\d*$"  title="315 SIDING -  I" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="siding_II" name="315 SIDING-II" placeholder='315 SIDING -  II' shift='II' value="" pattern="^\d*$"  title="315 SIDING -  II" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="siding_III" name="315 SIDING-III" placeholder='315 SIDING -  III' shift='III' value="" pattern="^\d*$"  title="315 SIDING -  III" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="siding_onDate" name="315 SIDING-ON-DATE" placeholder='315 SIDING -  ON-DATE'   title="315 SIDING -  ON-DATE"  disabled ></td>
                <td><input type="number" id="siding_cumm" name="315 SIDING-CUM" placeholder='315 SIDING -  CUM'   title="315 SIDING -  CUM"  disabled ></td>
            </tr>
            <tr>
                <td>FOH</td>
                <td><input type="number" id="foh_I" name="FOH-I" placeholder='FOH -  I' shift='I' value="" pattern="^\d*$"  title="FOH -  I" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="foh_II" name="FOH-II" placeholder='FOH -  II' shift='II' value="" pattern="^\d*$"  title="FOH -  II" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="foh_III" name="FOH-III" placeholder='FOH -  III' shift='III' value="" pattern="^\d*$"  title="FOH -  III" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="foh_onDate" name="FOH-ON-DATE" placeholder='FOH -  ON-DATE'   title="FOH-  ON-DATE"  disabled ></td>
                <td><input type="number" id=foh_cumm" name="FOH-CUM" placeholder='FOH -  CUM'  title="FOH -  CUM"  disabled ></td>
            </tr>
             <tr>
                <td>316A</td>
                <td><input type="number" id="316A_I" name="316A-I" placeholder='316A -  I' shift='I' value="" pattern="^\d*$"  title="316A -  I" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="316A_II" name="316A-II" placeholder='316A -  II' shift='II' value="" pattern="^\d*$"  title="316A -  II" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="316A_III" name="316A-III" placeholder='316A -  III' shift='III' value="" pattern="^\d*$"  title="316A -  III" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="316A_onDate" name="316A-ON-DATE" placeholder='316A -  ON-DATE'   title="316A -  ON-DATE"  disabled ></td>
                <td><input type="number" id="316A_cumm" name="316A-CUM" placeholder='316A -  CUM'   title="316A -  CUM"  disabled ></td>
            </tr>
             <tr>
                <td>315 N2</td>
                <td><input type="number" id="315N2_I" name="315 N2-I" placeholder='315 N2 -  I' shift='I' value="" pattern="^\d*$"  title="315 N2 -  I" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="315N2_II" name="315 N2-II" placeholder='315 N2 -  II' shift='II' value="" pattern="^\d*$"  title="315 N2 -  II" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="315N2_III" name="315 N2-III" placeholder='315 N2 -  III' shift='III' value="" pattern="^\d*$"  title="315 N2 -  III" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="315N2_onDate" name="315 N2-ON-DATE" placeholder='315 N2 -  ON-DATE'   title="315 N2-  ON-DATE"  disabled ></td>
                <td><input type="number" id="315N2_cumm" name="315 N2-CUM" placeholder='315 N2 -  CUM'  title="315 N2 -  CUM"  disabled required></td>
            </tr>
        </tbody>     
    </table>
          </div>
         
<!-- STOPPAGES BLOCK START-->        
<div>   
<div class="label label-default"><h3>Stoppages</h3></div>      
<select id="stoppages" multiple>            
    <option>NO ORE</option>
    <option>PSP FULL</option>
    <option>BOULDER JAM</option>
    <option>CHUTE JAM</option>
    <option>NO POWER</option>
    <option>MECH. B/D</option>
    <option>ELEC. B/D</option>
    <option>OTHERS</option>           
</select>   
<button type='button' class='btn btn-primary' id='btnAddStoppages'><i class="fa fa-plus"></i>  Add Stoppages</button>      
 <div>
     <table class="table hide" id='tblStoppages'>
        <thead class="thead-dark">
            <tr>
                <th>STOPPAGES</th>
                <th>SHIFT I</th>
                <th>SHIFT II</th>
                <th>SHIFT III</th>
                <th>ON-DATE</th>
                <th>CUM.</th>
                <th></th>
            </tr>
        </thead>
        <tbody>            
            <tr class='hide'>
                <td>No Stoppage</td> 
                <td><input type="number" step=".01" max="8" name="Stop-I" placeholder='Stoppage -  I' shift='I'  title="Stoppage -  I"  onblur="calculateOnDateStoppageBreakdown(this); return calTotalUtil(this); " ></td>
                <td><input type="number" step=".01" max="8"  name="Stop-II" placeholder='Stoppage -  II'  shift='II' title="Stoppage -  II"  onblur="calculateOnDateStoppageBreakdown(this); return calTotalUtil(this)"  ></td>
                <td><input type="number" step=".01" max="8"  name="Stop-III" placeholder='Stoppage -  III' shift='III' title="Stoppage -  III"  onblur="calculateOnDateStoppageBreakdown(this); return calTotalUtil(this)" ></td>
                <td><input type="number" step=".01"  name="Stop-onDate" placeholder='Stoppage - ON-DATE' default value="0" title="Stoppage - ON-DATE" disabled ></td>
                <td><input type="number" step=".01" name="Stop-cum" placeholder='Stoppage - CUM' default value="0" title="Stoppage - CUM" disabled > </td>
                <td><button type='button' class='btn btn-danger btn-sm' name='btnRemoveStoppages' onclick="removeStoppage(this)"><i class="fa fa-trash"></i>  Delete</button></td>
            </tr>
      </tbody>
     </table>
 
<!-- STOPPAGES BLOCK ENDS-->

<!-- BREAKDOWN BLOCK START-->      
 <div>
<div class="label label-default"><h3>Breakdowns</h3></div>
<select id="breakdown" multiple>            
    <option>NO ORE</option>
    <option>PSP FULL</option>
    <option>BOULDER JAM</option>
    <option>CHUTE JAM</option>
    <option>NO POWER</option>
    <option>MECH. B/D</option>
    <option>ELEC. B/D</option>
    <option>OTHERS</option>           
</select>   
<button type='button' class='btn btn-primary' id='btnAddBreakdowns'><i class="fa fa-plus"></i>  Add Breakdown</button>      
 <div>
     <table class="table hide" id='tblBreakdown'>
        <thead class="thead-dark">
            <tr>
                <th>BREAKDOWNS</th>
                <th>SHIFT I</th>
                <th>SHIFT II</th>
                <th>SHIFT III</th>
                <th>ON-DATE</th>
                <th>CUM.</th>
                <th></th>
            </tr>
        </thead>
        <tbody>            
            <tr class='hide'>
                <td>No Breakdown</td> 
                <td><input type="number" step=".01" max="8" name="Breakdown-I" placeholder='Breakdown -  I' shift='I'  title="Breakdown-  I"  onblur="calculateOnDateStoppageBreakdown(this); return calTotalUtil(this); " ></td>
                <td><input type="number" step=".01" max="8"  name="Breakdown-II" placeholder='Breakdown -  II'  shift='II' title="Breakdown -  II"  onblur="calculateOnDateStoppageBreakdown(this); return calTotalUtil(this)"  ></td>
                <td><input type="number" step=".01" max="8"  name="Breakdown-III" placeholder='Breakdown -  III' shift='III' title="Breakdown -  III"  onblur="calculateOnDateStoppageBreakdown(this); return calTotalUtil(this)" ></td>
                <td><input type="number" step=".01"  name="Breakdown-onDate" placeholder='Breakdown - ON-DATE' default value="0" title="Breakdown - ON-DATE" disabled ></td>
                <td><input type="number" step=".01" name="Breakdown-cum" placeholder='Breakdown - CUM' default value="0" title="Breakdown - CUM" disabled > </td>
                <td><button type='button' class='btn btn-danger btn-sm' name='btnBreakdowns' onclick="removeBreakdown(this)"><i class="fa fa-trash"></i>  Delete</button></td>
            </tr>
      </tbody>
     </table>
 </div>
</div>      
<!-- BREAKDOWN BLOCK ENDS-->

<!-- UTILIZATION BLOCK START-->   
<div>
<div class="label label-default"><h3>Utilization</h3></div>      
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
            <p> <font color="#800000"> <b> Utilized Hr. </b> </p>
            <tr>
                     <td>UTL.<br>
                         6550/6650-CR <br>
                     </td>
                <td><input type="number" step=".01" id="UTL_I" name="UTL-I" placeholder='UTL. -  I'   value="0"  pattern="^\d*(\.\d{0,2})?$"  title="UTL. -  I"   disabled></td>
                <td><input type="number" step=".01" id="UTL_II" name="UTL-II" placeholder='UTL. -  II'  value="0"   pattern="^\d*(\.\d{0,2})?$" title="UTL. -  II"   disabled></td>
                <td><input type="number" step=".01" id="UTL_III" name="UTL-III" placeholder='UTL. -  III'  value="0"  pattern="^\d*(\.\d{0,2})?$"  title="UTL. -  III"   disabled></td>
                 <td><input type="number" step=".01" id="UTL_onDate" name="UTL-onDate" placeholder='UTL. - ON-DATE'  title="UTL. - ON-DATE" disabled ></td>
                <td><input type="number" step=".01" id="UTL_cumm" name="UTL-cum" placeholder='UTL. - CUM'  value="0" title="UTL. - CUM" disabled > </td>
            </tr>
      </tbody>
       </table>        
</div>
<div>
    <div class="progress">
        <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar"
             aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:0%">
            Utilization Hr. 0%
        </div>
    </div>
<!-- UTILIZATION BLOCK ENDS-->  
    <br>
        
<!-- SCHEDULED HR BLOCK START-->  
<div>
    <p> <font color="#800000"> <b> Scheduled Hr. </b> </p>

    <mark> SHIFT I - 8hr. / </mark>   
     <mark> SHIFT II - 8hr. / </mark>  
      <mark> SHIFT III - 8hr. </mark>  
</div>
      <!-- SCHEDULED HR BLOCK ENDS-->  
      <br>
      
      <div class="checkbox">
          <label>
             <h5> <font color="red"> <input type="checkbox"> Check me out </font> </h5> 
          </label>
      </div>
     <center>
       <button type="submit" class='btn btn-success btn-sm mr-3'>SUBMIT</button> 
       <a  href="productionmenu.html">Go Back</a>
     </center>             
   </form>

         </div>
         </div>
        </div>
          
      
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/css/bootstrap-multiselect.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-multiselect/0.9.13/js/bootstrap-multiselect.js"></script>

    <script type="text/javascript">
        const SCHEDULED_HR =8;
        const SHIFTS = {
                FIRSTSHIFT : "I",
                SECONDSHIFT : "II",
                THIRDSHIFT: 'III'
        }
            
        this.stateObj = {
            currentShift: SHIFTS.FIRSTSHIFT,
            currentProduction : 0,
            currentUtlHr : 0,
            currentBreakdowns : 0,
            currentStoppages :0,
            onDateStoppageAndBreakdown:0
        }
        
        //update the ondate feed value based on change in shift's feed
        function calculateOnDateProduction(field) {  
                let currentRow = $(field).closest("tr");
                const currentShift = $(field).attr("shift");
                switch(currentShift){
                    case "I" : this.stateObj.currentShift = SHIFTS.FIRSTSHIFT;
                              break;
                    case "II" : this.stateObj.currentShift = SHIFTS.SECONDSHIFT;
                               break;
                    case "III" : this.stateObj.currentShift = SHIFTS.THIRDSHIFT;
                               break;
                }
                let first =  parseInt($("input[id$='_I']",currentRow).val()) ||0 ;
                let second =  parseInt($("input[id$='_II']",currentRow).val()) ||0;
                let third =  parseInt($("input[id$='_III']",currentRow).val())||0;              
                let calOnDate = first + second + third;
                $("input[id$='_onDate']",currentRow).val(calOnDate);               
         } 
         
  /*      //update the ondate stoppage value based on change in shift's stoppage
        function calculateOnDateStoppage(field) {   
            let currentRow = $(field).closest("tr");
            let first =  parseFloat($("input[name$='-I']",currentRow).val()) ||0 ;
            let second =  parseFloat($("input[name$='-II']",currentRow).val()) ||0;
            let third =  parseFloat($("input[name$='-III']",currentRow).val())||0;              
            let calOnDate = first + second + third;
            $("input[name$='-onDate']",currentRow).val(calOnDate.toFixed(2));
         } 
         
          //update the ondate breakdown value based on change in shift's stoppage
        function calculateOnDateBreakdown(field) {   
            let currentRow = $(field).closest("tr");
            let first =  parseFloat($("input[name$='-I']",currentRow).val()) ||0 ;
            let second =  parseFloat($("input[name$='-II']",currentRow).val()) ||0;
            let third =  parseFloat($("input[name$='-III']",currentRow).val())||0;              
            let calOnDate = first + second + third;
            $("input[name$='-onDate']",currentRow).val(calOnDate.toFixed(2));
         }  
       */  
            //update the ondate stoppage and breakdown value based on change in shift's stoppage/breakdown
        function calculateOnDateStoppageBreakdown(field) {   
            let currentRow = $(field).closest("tr");
            let first =  parseFloat($("input[name$='-I']",currentRow).val()) ||0 ;
            let second =  parseFloat($("input[name$='-II']",currentRow).val()) ||0;
            let third =  parseFloat($("input[name$='-III']",currentRow).val()) ||0;              
            let calOnDate = first + second + third;
            $("input[name$='-onDate']",currentRow).val(calOnDate.toFixed(2));
         }  
                  
            //calculates total of the stoppages for the shift
           function calTotalStoppageAndBreakdown(curObj) { 
                let total=0; 
                //const currentShift = $(curObj).attr("shift");
                const currentShift =  this.stateObj.currentShift;
                let stoppageAndBreakdownFields = $('#tblBreakdown tr,#tblStoppages tr').not('.hide').find('input[shift="'+currentShift+'"]'); 
                stoppageAndBreakdownFields.each((index,reason) => {
                       total += parseFloat(reason.value)||0;
                 });
                 
                if(total > SCHEDULED_HR ){
                 alert("Verify that the total stoppages + breakdown should not be more than"+ SCHEDULED_HR+ " hrs");  
                 $(curObj).val('');
                 return false;
                }
                return total.toFixed(2);
            }
                    
            //updates the utilisation hour for the shfit
            function calTotalUtil(curObj) {
                let utilHr = (SCHEDULED_HR - calTotalStoppageAndBreakdown(curObj)).toFixed(2);
                let currentShift = $(curObj).attr("shift");        
                let currentShiftUtilId = "UTL_"+currentShift;
                document.getElementById(currentShiftUtilId).value = utilHr;
                
                let utilI = document.querySelector("#UTL_I").value;
                let utilII = document.querySelector("#UTL_II").value;
                let utilIII = document.querySelector("#UTL_III").value;
                let utilOnDate = document.querySelector("#UTL_onDate");
                
                let totalUtil = parseFloat(utilI) + parseFloat(utilII)+ parseFloat(utilIII);
                utilOnDate.value = totalUtil.toFixed(2);
                updateUtilizationProgress();
           }     
   
    
        function checkExist(compareText, tblName) { 
         let isExist = false;
         let selector = "#"+tblName+" tbody tr"; 
         $(selector).find("td:first").each( (index,column) => { 
         let a = $(column).html();
         if(a === compareText) { 
           isExist = true;
         }
        });
        return isExist;
        }


        $("#btnAddStoppages").on("click", function () {
            let selected = $("#stoppages").val();  
            if(!selected ) {
                alert("select atleast one stoppage reason to be added");
                return;
            }
            for(let i=0;i<selected.length;i++){ 
                if(!checkExist(selected[i],"tblStoppages")) {       
                    let row = $("#tblStoppages tbody tr:first").clone(false);
                    $(row).removeClass('hide');
                    $("#tblStoppages").removeClass('hide');
                    $(row).find('td')[0].innerText = selected[i];
                    $("#tblStoppages tbody").append(row);
                   }     
                }
            });       
            
         $("#btnAddBreakdowns").on("click", function () {
            let selected = $("#breakdown").val();  
            if(!selected ) {
                alert("select atleast one breakdown reason to be added");
                return;
            }
            for(let i=0;i<selected.length;i++){ 
                if(!checkExist(selected[i],"tblBreakdown")) {       
                    let row = $("#tblBreakdown tbody tr:first").clone(false);
                    $(row).removeClass('hide');
                    $("#tblBreakdown").removeClass('hide');
                    $(row).find('td')[0].innerText = selected[i];
                    $("#tblBreakdown tbody").append(row);
                   }     
                }
            });    
        
        function removeStoppage(btn) { 
            let row = $(btn).closest("tr")
            let stoppageType = $(row).find("td:first").html();
            $(btn).closest("tr",row).remove();
            $('#stoppages').multiselect('deselect', [stoppageType]); 
            const countRows = $('#tblStoppages').find("tr").length;
            if(countRows <3) { //one header row , second hidden row
                $("#tblStoppages").addClass('hide');                
            }
            let firstShiftObj = $(row).find("td:nth-child(2) > input",row) ;
            let secondShiftObj = $(row).find("td:nth-child(3)> input",row) ;
            let thirdShiftObj = $(row).find("td:nth-child(4)> input",row) ;
            calTotalUtil(firstShiftObj);
            calTotalUtil(secondShiftObj);
            calTotalUtil(thirdShiftObj);
        }    
        
         function removeBreakdown(btn) {
            let row = $(btn).closest("tr")
            let breakdownType = $(row).find("td:first").html();
            $(btn).closest("tr",row).remove();
            $('#breakdown').multiselect('deselect', [breakdownType]); 
            const countRows = $('#tblBreakdown').find("tr").length;
            if(countRows <3) { //one header row , second hidden row
                $("#tblBreakdown").addClass('hide');                
            }
            let firstShiftObj = $(row).find("td:nth-child(2) > input",row) ;
            let secondShiftObj = $(row).find("td:nth-child(3)> input",row) ;
            let thirdShiftObj = $(row).find("td:nth-child(4)> input",row) ;
            calTotalUtil(firstShiftObj);
            calTotalUtil(secondShiftObj);
            calTotalUtil(thirdShiftObj);
        }    
              
    
      //calculates total of the stoppages for the shift
        /*    function calTotalStoppage(curObj) {            
                let total=0;
                let currentName = $(curObj).prop("name");
                const stoppageFieldSelector = "[name="+ currentName+ "]"
                let stoppageFields = $(stoppageFieldSelector).not(":first");
                stoppageFields.each((index,stoppage) => {                
                  total += parseFloat(stoppage.value)||0;
                 });
                 
                if(total > SCHEDULED_HR ){
                 alert("Verify that the total stoppages should not be more than" SCHEDULED_HR+" hrs");  
                 $(curObj).val('');
                 calculateOnDateStoppage(curObj);
                 return false;
                }
                return total.toFixed(2);
               }
               */
        function updateUtilizationProgress() {
            
            const currentShift = this.stateObj.currentShift;
            let onDateUtil = parseFloat(document.querySelector("#UTL_onDate").value);
            let utilPer = 0;
            let availHrs = 0;
            if(currentShift === 'I') {
                availHrs = SCHEDULED_HR;
            } else if(currentShift === 'II') {
                availHrs = SCHEDULED_HR * 2;
            } else {
                availHrs = SCHEDULED_HR * 3;
            }                 
            console.log("availHrs",availHrs);
            utilPer = ((onDateUtil)*100/availHrs).toFixed(2);
              
            //let utilOnDate = parseFloat(document.querySelector("#UTL_onDate").value).toFixed(2);
            //let util = (utilOnDate/parseInt(SCHEDULED_HR * 3) *100).toFixed(2) +"%";
            let util = utilPer +"%";
            let utilizationText = "Utilization : "+util+" till "+this.stateObj.currentShift + " shift";
            $("div .progress-bar").text(utilizationText);
            $("div .progress-bar").width(util)
        }
                   
        $(function() {           
          
            $('#stoppages').multiselect({
                includeSelectAllOption: true,
                nonSelectedText: 'No Stoppages',
                numberDisplayed: 1,        
                enableCaseInsensitiveFiltering: true,        
            });
            
            $('#breakdown').multiselect({
                includeSelectAllOption: true,
                nonSelectedText: 'No Breakdown',
                numberDisplayed: 1,        
                enableCaseInsensitiveFiltering: true,        
            });
            
                 
            
          });
        </script>  


</body>
    
</html>