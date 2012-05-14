using ggpsService;

/// <summary>
/// Summary description for ServiceInvoker
/// </summary>
public static class ServiceInvoker
{
    /// <summary>
    /// Call the gsis web service and returns info about a legal entity (ver1 call)
    /// </summary>
    /// <param name="afm">string : a valid vat number for a legal entity</param>
    /// <returns>RgWsBasStoixNRtUser : record with the entity info</returns>
	public static RgWsBasStoixNRtUser InvokeggpsService(string afm)
	{
		    decimal transid = 0;

            RgWsBasStoixNClient client = new RgWsBasStoixNClient();
            RgWsBasStoixNRtUser res = new RgWsBasStoixNRtUser();
            GenWsErrorRtUser reserror = new GenWsErrorRtUser();

            //Invoke service client
            client.rgWsBasStoixN(afm, ref res, ref transid, ref reserror);
            
            
            //TODO : check error status
            if (reserror != null && !string.IsNullOrEmpty(reserror.errorCode))
            {
                //handle error code

                //reserror.errorCode
                //reserror.errorDescr 

            }
            
            return res;
	}

    /// <summary>
    /// Call the gsis web service and returns info about a legal entity (ver2 call)
    /// </summary>
    /// <param name="afm">string : a valid vat number for a legal entity</param>
    /// <returns>RgWsBasStoixEpitRtUser : record with the entity info</returns>
    public static RgWsBasStoixEpitRtUser InvokeggpsService2(string afm)
    {
        decimal transid = 0;

        RgWsBasStoixNClient client = new RgWsBasStoixNClient();
        RgWsBasStoixEpitRtUser res = new RgWsBasStoixEpitRtUser();
        GenWsErrorRtUser reserror = new GenWsErrorRtUser();

        //Invoke service client
        client.rgWsBasStoixEpit(afm, ref res, ref transid, ref reserror);

         
        //TODO : check error status
        if (reserror != null && !string.IsNullOrEmpty(reserror.errorCode))
        {
            //handle error code

            //reserror.errorCode
            //reserror.errorDescr 

        }

        return res;
    }


    
}