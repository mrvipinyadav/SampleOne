using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebExcepBlock
{

    public class CaseSearchItem
    {

        public string CaseType { get; set; }
        public string CaseIdentifier { get; set; }
        public string Status { get; set; }
        public string CaseName { get; set; }
        public string ContactName { get; set; }
        public string CreateDate { get; set; }
        
    }
    public partial class CaseSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindTheGrid();
        }
        public void BindTheGrid()
        {
            List<CaseSearchItem> caseList = new List<CaseSearchItem>();
            caseList.Add(new CaseSearchItem { CaseType = "GENERAL", CaseIdentifier = "C0407260006", Status = "OPEN", CaseName = "Park Zuckerberg", ContactName = "Mark", CreateDate = "01012001" });
            caseList.Add(new CaseSearchItem { CaseType = "GENERAL", CaseIdentifier = "C0407260007", Status = "CLOSED", CaseName = "Park Zuckerberg", ContactName = "Mark", CreateDate = "03012001" });
            caseList.Add(new CaseSearchItem { CaseType = "GENERAL", CaseIdentifier = "C0407260012", Status = "OPEN", CaseName = "Park Zuckerberg", ContactName = "Mark", CreateDate = "01012001" });
            caseList.Add(new CaseSearchItem { CaseType = "GENERAL", CaseIdentifier = "C0407260246", Status = "CLOSED", CaseName = "Park Zuckerberg", ContactName = "Mark", CreateDate = "06012001" });
            caseList.Add(new CaseSearchItem { CaseType = "GENERAL", CaseIdentifier = "C0407260067", Status = "CLOSED", CaseName = "Park Zuckerberg", ContactName = "Mark", CreateDate = "01012001" });
            caseList.Add(new CaseSearchItem { CaseType = "GENERAL", CaseIdentifier = "C0407260068", Status = "CLOSED", CaseName = "Park Zuckerberg", ContactName = "Mark", CreateDate = "09012001" });
            caseList.Add(new CaseSearchItem { CaseType = "GENERAL", CaseIdentifier = "C0407260042", Status = "CLOSED", CaseName = "Park Zuckerberg", ContactName = "Mark", CreateDate = "01012001" });
            caseList.Add(new CaseSearchItem { CaseType = "GENERAL", CaseIdentifier = "C0407260076", Status = "CLOSED", CaseName = "Park Zuckerberg", ContactName = "Mark", CreateDate = "08012001" });
            caseList.Add(new CaseSearchItem { CaseType = "GENERAL", CaseIdentifier = "C0407260146", Status = "CLOSED", CaseName = "Park Zuckerberg", ContactName = "Mark", CreateDate = "03012001" });
            taskGridView.DataSource = caseList;
            taskGridView.DataBind();
        }

        protected void taskGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            taskGridView.PageIndex = e.NewPageIndex;
            BindTheGrid();
        }
    }
}