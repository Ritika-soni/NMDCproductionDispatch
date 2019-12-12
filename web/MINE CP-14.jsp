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
        <h2 class="heading">DAILY PRODUCTION DETAILS </h2> 
        <div id="bounce"> <h2 class="heading">CRUSHING PLANT - 14</h2> </div>
        <div class="container">
            <div class='date float-right font-weight-bold text-info bg-warning'> <i class="las la-calendar"></i> <%= currentDate %> </div>
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
                <td>FIRST HR. </td>
                <td><input type="number" id="first_I" name="1st Hr-I" placeholder='1st hr -  I' shift='I' value="" pattern="^\d*$"  title="1st hr -  I" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="first_II"  name="1st Hr-II" placeholder='1st hr -  II' shift='II' value="" pattern="^\d*$"  title="1st hr -  II" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="first_III"  name="1st Hr-III" placeholder='1st hr -  III' shift='III' value="" pattern="^\d*$"  title="1st hr -  III" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="first_onDate" name="1st Hr-ON DATE" placeholder='1st hr - ON-DATE'  title="1st hr - ON-DATE"  disabled ></td>
                <td><input type="number"  id="first_cumm" name="1st Hr-CUM"  placeholder='1st hr -  CUM'  title="1st hr -  CUM" disabled  ></td>
            </tr>
            <tr>
                <td>LAST HR. </td>
                <td><input type="number" id="last_I" name="Last Hr-I" placeholder='Last hr -  I' shift='I' value="" pattern="^\d*$"  title="Last hr -  I" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="last_II"  name="Last Hr-II" placeholder='Last hr -  II' shift='II' value="" pattern="^\d*$"  title="Last hr -  II" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="last_III"  name="Last Hr-III" placeholder='Last hr -  III' shift='III'value="" pattern="^\d*$"  title="Last hr -  III" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="last_onDate" name="Last Hr-ON-DATE" placeholder='Last hr -  ON-DATE'   title="Last hr -  ON-DATE"  disabled ></td>
                <td><input type="number"  id="last_cumm"  name="Last Hr-CUM" placeholder='Last hr -  CUM'   title="Last hr -  CUM"  disabled ></td>
            </tr>
                 <tr>
                <td>ROM</td>
                <td><input type="number" id="ROM_I" name="ROM Hr-I" placeholder='ROM -  I' shift='I' value="" pattern="^\d*$"  title="ROM -  I" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="ROM_II" name="ROM Hr-II" placeholder='ROM -  II' shift='II' value="" pattern="^\d*$"  title="ROM -  II" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="ROM_III" name="ROM Hr-III" placeholder='ROM -  III' shift='III' value="" pattern="^\d*$"  title="ROM  -  III" required onblur="calculateOnDateProduction(this);calTotalUtil(this)"></td>
                <td><input type="number" id="ROM_onDate" name="ROM Hr-ON-DATE" placeholder='ROM -  ON-DATE'  title="ROM -  ON-DATE" disabled ></td>
                <td><input type="number"  id="ROM_cumm" name="ROM Hr-CUM" placeholder='ROM -  CUM'  title="ROM -  CUM" disabled  ></td>
            </tr>
        </tbody>     
    </table>
          </div>
             
<!-- BREAKDOWN BLOCK START-->        
<div>   
<div class="label label-default"><h3>Breakdown</h3></div>      
<select id="Breakdown" multiple> 
    <option>101 Apron Feeder</option>
    <option>102 Primary Crusher</option>
    <option>103 Apron Feeder</option>
    <option>104 Belt Conveyor</option>
    <option>107 Scalping Screen</option>
    <option>108 Secondary Crusher</option>
    <option>109 Belt Conveyor</option>
    <option>110 Apron Feeder</option>
    <option>111 Belt Conveyor</option>
    <option>112 Grizzly</option>
    <option>Electrical</option> 
    <option>Misc.</option>
    <option>Maintenance</option>
    <option>Others</option>             
</select>   
<button type='button' class='btn btn-primary' id='btnAddBreakdown'><i class="las la-plus-circle"></i> Add Breakdown</button>      
 <div>
     <table class="table hide" id='tblBreakdown'>
        <thead class="thead-dark">
            <tr>
                <th>Breakdown</th>
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
                <td><input type="number" step=".01" max="8" name="Break-I" placeholder='Breakdown -  I' shift='I'  title="Breakdown -  I"  onblur="calculateOnDateOperationalDelay(this); return calTotalUtil(this)" ></td>
                <td><input type="number" step=".01" max="8"  name="Break-II" placeholder='Breakdown -  II'  shift='II' title="Breakdown -  II"  onblur="calculateOnDateOperationalDelay(this); return calTotalUtil(this)"  ></td>
                <td><input type="number" step=".01" max="8"  name="Break-III" placeholder='Breakdown -  III' shift='III' title="Breakdown -  III"  onblur="calculateOnDateOperationalDelay(this); return calTotalUtil(this)" ></td>
                <td><input type="number" step=".01"  name="Break-onDate" placeholder='Breakdown - ON-DATE' default value="0" title="Breakdown - ON-DATE" disabled ></td>
                <td><input type="number" step=".01" name="Break-cum" placeholder='Breakdown - CUM' default value="0" title="Breakdown - CUM" disabled > </td>
                <td><button type='button' class='btn btn-danger btn-sm' name='btnRemoveBreakdown' onclick="removeBreakdown(this)"><i class="las la-trash"></i> Remove</button></td>
            </tr>
      </tbody>
     </table>
 
<!-- BREAKDOWN BLOCK ENDS-->

<!-- OPERATIONAL DELAY BLOCK START-->      
<div>
<div class="label label-default"><h3>Operational Delay</h3></div>
<select id="Operational_Delay" multiple>            
     <option>General Checking</option>
    <option>Tea Time</option>
    <option>Sequence Stop</option>
    <option>No Ore</option>
    <option>Boulder /Pri.Crusher Jam</option>
    <option>Blasting in Hopper</option>
    <option>CGEB Power Failure</option>
    <option>Local Power Failure</option> 
    <option>MD/Foreign Matl.</option>
    <option>PSP Full</option>
    <option>No Water</option>
    <option>Chute Jam</option>
    <option>Blasting in Mine</option>
    <option>Bus Late</option>
    <option>Idle</option>
     <option>Others</option>
</select>   
<button type='button' class='btn btn-primary' id='btnAddOperational_Delays'><i class="las la-plus-circle"></i> Add Operational Delay</button>      
 <div>
     <table class="table hide" id='tblOperational_Delay'>
        <thead class="thead-dark">
            <tr>
                <th>OPERATIONAL DELAY</th>
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
                <td>No Operational_Delay</td> 
                <td><input type="number" step=".01" max="8" name="Operational_Delay-I" placeholder='Operational_Delay -  I' shift='I'  title="Operational_Delay-  I"  onblur="calculateOnDateOperationalDelay(this); return calTotalUtil(this)" ></td>
                <td><input type="number" step=".01" max="8"  name="Operational_Delay-II" placeholder='Operational_Delay -  II'  shift='II' title="Operational_Delay -  II"  onblur="calculateOnDateOperationalDelay(this); return calTotalUtil(this)"  ></td>
                <td><input type="number" step=".01" max="8"  name="Operational_Delay-III" placeholder='Operational_Delay -  III' shift='III' title="Operational_Delay -  III"  onblur="calculateOnDateOperationalDelay(this); return calTotalUtil(this)" ></td>
                <td><input type="number" step=".01"  name="Operational_Delay-onDate" placeholder='Operational_Delay - ON-DATE' default value="0" title="Operational_Delay - ON-DATE" disabled ></td>
                <td><input type="number" step=".01" name="Operational_Delay-cum" placeholder='Operational_Delay - CUM' default value="0" title="Operational_Delay - CUM" disabled > </td>
                <td><button type='button' class='btn btn-danger btn-sm' name='Operational_Delay' onclick="removeOperational_Delay(this)"><i class="las la-trash"></i> Remove</button></td>
            </tr>
      </tbody>
     </table>
 </div>
</div>      
<!-- OPERATIONAL DELAY BLOCK ENDS-->

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
       <a  href="menu.jsp">Go Back</a>
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
            currentFeed : 0,
            currentUtlHr : 0,
            currentOperational_Delay : 0,
            currentBreakdown :0,
            onDateBreakdownAndOperational_Delay:0
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
         
  /*      //update the ondate breakdown value based on change in shift's breakdown
        function calculateOnDateBreakdown(field) {   
            let currentRow = $(field).closest("tr");
            let first =  parseFloat($("input[name$='-I']",currentRow).val()) ||0 ;
            let second =  parseFloat($("input[name$='-II']",currentRow).val()) ||0;
            let third =  parseFloat($("input[name$='-III']",currentRow).val())||0;              
            let calOnDate = first + second + third;
            $("input[name$='-onDate']",currentRow).val(calOnDate.toFixed(2));
         } 
         
          //update the ondate Operational_Delay value based on change in shift's breakdown
        function calculateOnDateOperational_Delay(field) {   
            let currentRow = $(field).closest("tr");
            let first =  parseFloat($("input[name$='-I']",currentRow).val()) ||0 ;
            let second =  parseFloat($("input[name$='-II']",currentRow).val()) ||0;
            let third =  parseFloat($("input[name$='-III']",currentRow).val())||0;              
            let calOnDate = first + second + third;
            $("input[name$='-onDate']",currentRow).val(calOnDate.toFixed(2));
         }  
       */  
            //update the ondate breakdown and Operational_Delay value based on change in shift's breakdown/Operational_Delay
        function calculateOnDateOperationalDelay(field) {   
            let currentRow = $(field).closest("tr");
            let first =  parseFloat($("input[name$='-I']",currentRow).val()) ||0 ;
            let second =  parseFloat($("input[name$='-II']",currentRow).val()) ||0;
            let third =  parseFloat($("input[name$='-III']",currentRow).val()) ||0;              
            let calOnDate = first + second + third;
            $("input[name$='-onDate']",currentRow).val(calOnDate.toFixed(2));
         }  
                  
            //calculates total of the Breakdown for the shift
           function calTotalBreakdownAndOperational_Delay(curObj) { 
                let total=0; 
                //const currentShift = $(curObj).attr("shift");
                const currentShift =  this.stateObj.currentShift;
                let breakdownAndOperational_DelayFields = $('#tblOperational_Delay tr,#tblBreakdown tr').not('.hide').find('input[shift="'+currentShift+'"]'); 
                breakdownAndOperational_DelayFields.each((index,reason) => {
                       total += parseFloat(reason.value)||0;
                 });
                 
                if(total > SCHEDULED_HR ){
                 alert("Verify that the total Breakdown + Operational_Delay should not be more than"+ SCHEDULED_HR+ " hrs");  
                 $(curObj).val('');
                 return false;
                }
                return total.toFixed(2);
            }
                    
            //updates the utilisation hour for the shfit
            function calTotalUtil(curObj) {
                let utilHr = (SCHEDULED_HR - calTotalBreakdownAndOperational_Delay(curObj)).toFixed(2);
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


        $("#btnAddBreakdown").on("click", function () {
            let selected = $("#Breakdown").val();  
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
            
         $("#btnAddOperational_Delays").on("click", function () {
            let selected = $("#Operational_Delay").val();  
            if(!selected ) {
                alert("select atleast one Operational_Delay reason to be added");
                return;
            }
            for(let i=0;i<selected.length;i++){ 
                if(!checkExist(selected[i],"tblOperational_Delay")) {       
                    let row = $("#tblOperational_Delay tbody tr:first").clone(false);
                    $(row).removeClass('hide');
                    $("#tblOperational_Delay").removeClass('hide');
                    $(row).find('td')[0].innerText = selected[i];
                    $("#tblOperational_Delay tbody").append(row);
                   }     
                }
            });    
        
        function removeBreakdown(btn) { 
            let row = $(btn).closest("tr")
            let breakdownType = $(row).find("td:first").html();
            $(btn).closest("tr",row).remove();
            $('#Breakdown').multiselect('deselect', [breakdownType]); 
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
        
         function removeOperational_Delay(btn) {
            let row = $(btn).closest("tr")
            let Operational_DelayType = $(row).find("td:first").html();
            $(btn).closest("tr",row).remove();
            $('#Operational_Delay').multiselect('deselect', [Operational_DelayType]); 
            const countRows = $('#tblOperational_Delay').find("tr").length;
            if(countRows <3) { //one header row , second hidden row
                $("#tblOperational_Delay").addClass('hide');                
            }
            let firstShiftObj = $(row).find("td:nth-child(2) > input",row) ;
            let secondShiftObj = $(row).find("td:nth-child(3)> input",row) ;
            let thirdShiftObj = $(row).find("td:nth-child(4)> input",row) ;
            calTotalUtil(firstShiftObj);
            calTotalUtil(secondShiftObj);
            calTotalUtil(thirdShiftObj);
        }    
              
    
      //calculates total of the Breakdown for the shift
        /*    function calTotalBreakdown(curObj) {            
                let total=0;
                let currentName = $(curObj).prop("name");
                const breakdownFieldSelector = "[name="+ currentName+ "]"
                let breakdownFields = $(breakdownFieldSelector).not(":first");
                breakdownFields.each((index,breakdown) => {                
                  total += parseFloat(breakdown.value)||0;
                 });
                 
                if(total > SCHEDULED_HR ){
                 alert("Verify that the total Breakdown should not be more than" SCHEDULED_HR+" hrs");  
                 $(curObj).val('');
                 calculateOnDateBreakdown(curObj);
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
        
            $('#Breakdown').multiselect({
                includeSelectAllOption: true,
                nonSelectedText: 'No Breakdown',
                numberDisplayed: 1,        
                enableCaseInsensitiveFiltering: true,        
            });
            
            $('#Operational_Delay').multiselect({
                includeSelectAllOption: true,
                nonSelectedText: 'No Operational Delay',
                numberDisplayed: 1,        
                enableCaseInsensitiveFiltering: true,        
            });
            
                 
            
          });
        </script>  

</body>
    
</html>