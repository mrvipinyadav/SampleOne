using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebExcepBlock
{

    public class IdentifierItem
    {
        public String IdentifierType { get; set; }
        public String IdentifierValue { get; set; }

    }

    public partial class IdentifierList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindTheGrid();
        }
        public void BindTheGrid()
        {
            List<IdentifierItem> activityList = new List<IdentifierItem>();
            activityList.Add(new IdentifierItem { IdentifierType= "FUND NUMBER", IdentifierValue="2837393" });
            activityList.Add(new IdentifierItem { IdentifierType = "BANK ACCOUNT NBR", IdentifierValue = "0837374443" });
            activityList.Add(new IdentifierItem { IdentifierType = "LAST NAME", IdentifierValue = "William" });
            activityList.Add(new IdentifierItem { IdentifierType = "FIRST NAME", IdentifierValue = "Jony" });
            activityList.Add(new IdentifierItem { IdentifierType = "SSN", IdentifierValue = "77777777" });
            taskGridView.DataSource = activityList;
            taskGridView.DataBind();
        }

        protected void taskGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            taskGridView.PageIndex = e.NewPageIndex;
            BindTheGrid();
        }
    }
}