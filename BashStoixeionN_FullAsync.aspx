<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BashStoixeionN_FullAsync.aspx.cs" Inherits="BashStoixeionN_FullAsync" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="assets/css/site.css" rel="stylesheet" type="text/css" />
    <title>Βάση Στοιχείων Νομικών Προσώπων (ΓΓΠΣ)</title>
        <script language="javascript" type="text/javascript" src="http://www.google.com/jsapi"></script>
    <script language="javascript" type="text/javascript">
        // Load jQuery 
        google.load("jquery", "1.7.0");
      
</script>
<script src="assets/js/jquery.tmpl.min.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
    function getResults() {

            var afm = $('#txtAfm').val();  //get afm from input 

            //call to WebMethod GetAfmInfo ,using afm as a parameter

            $.ajax({
                type: "POST",
                url: "BashStoixeionN_FullAsync.aspx/GetAfmInfo",
                data: "{'afm':'" + afm + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (json) {
                    
                    //get json response
                    var result = eval('(' + json["d"] + ')');

                    //get presentation templates from external file (site.tmpl.htm)
                    $.get('assets/tmpl/site.tmpl.htm', function (templates) {
                        // Inject all templates at the end of the document.
                        $('body').append(templates);

                        // Select the newly injected TemplateFull and use it to render data.
                        $('#TemplateFull').tmpl(result).appendTo('#divresults');
                    }); //end $.get

                } //end success

            }); //end $.ajax 
        } //end function getResults


</script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="divsearch">
    <p>Παρακαλώ δώστε ένα ΑΦΜ Νομικού προσώπου και πατήστε Αναζήτηση</p>
        <input type="text" id="txtAfm" onkeyup="this.value=this.value.replace(/\D/g,'')"/>
        <input type="button" id="btnSearch" value="Αναζήτηση" onclick="getResults();" />
      
    </div>

     <div id="divresults" style="width:100% ; height:100% ;"></div>


    </form>
</body>
</html>
