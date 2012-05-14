using System;
using ggpsService;

public partial class BashStoixeionN_Simple : System.Web.UI.Page
{
 
    /// <summary>
    /// Handle search button click 
    /// Get results from webservice and display certain properties 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        
        RgWsBasStoixEpitRtUser result = ServiceInvoker.InvokeggpsService2(txtAfm.Text.Trim());
        lblResultsOnomasia.Text = result.onomasia;
        lblResultsOnomasia.Text  = result.onomasia;
        lblResultsActLongDescr.Text = result.actLongDescr;
    }
}