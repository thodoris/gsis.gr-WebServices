<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BashStoixeionN_Simple.aspx.cs" Inherits="BashStoixeionN_Simple" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Βάση Στοιχείων Νομικών Προσώπων (ΓΓΠΣ)</title>
     <link href="assets/css/site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>Παρακαλώ δώστε ένα ΑΦΜ Νομικού προσώπου και πατήστε Αναζήτηση</p>
        <br />
        <asp:TextBox ID="txtAfm" runat="server" MaxLength="10"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Αναζήτηση" 
            onclick="btnSearch_Click" />
    </div>

     <div id="divresults" style="width:100% ; text-align:center">
     <br />
    <b>Επωνυμία :</b> <asp:Label ID="lblResultsOnomasia" runat="server" />
     <br />
    <b>Δραστητιότητα:</b> <asp:Label ID="lblResultsActLongDescr" runat="server" />

    </div>

    </form>
</body>
</html>
