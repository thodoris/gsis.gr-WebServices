using ggpsService;
using System.Web.Services;
using System.Web.Script.Serialization;

public partial class BashStoixeionN_FullAsync : System.Web.UI.Page
{

    [WebMethod]
    public static string GetAfmInfo(string afm)
    {

        RgWsBasStoixEpitRtUser result = ServiceInvoker.InvokeggpsService2(afm.Trim());

        JavaScriptSerializer jss = new JavaScriptSerializer();
        string json = jss.Serialize(result);

        //fix date serialization in Json
        json=json.Replace("\"\\/Date(", "new Date(").Replace(")\\/\"", ")");

        return json;

    }

   
}