using DataLibrary;
using Microsoft.Practices.EnterpriseLibrary.ExceptionHandling;
using Microsoft.Practices.EnterpriseLibrary.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebExcepBlock
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                
                int a = 10;
                int b = 0;

                int c = a / b;

                Response.Write("No erroc Occured");


            }
            catch (Exception ex)
            {

                ExceptionPolicy.HandleException(ex, "ExceptionPolicy");
                
                Response.Write("some exception occured");
                //
                //Logger.Write("Message One Started", "AppLogs");
                //throw;

            }
        }
    }
}