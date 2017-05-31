using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebExcepBlock
{
    public partial class DocumentList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindTheGrid();
        }

        public void BindTheGrid()
        {
            List<DocumentSearchItem> caseList = new List<DocumentSearchItem>();
            caseList.Add(new DocumentSearchItem { CreateDate = "105052011", DocID = "d0407080.001", DocType = "IMAGE", ContentType = "I", MailType = "FAX" });
            caseList.Add(new DocumentSearchItem { CreateDate = "105052011", DocID = "d0407080.001", DocType = "NOTE", ContentType = "I", MailType = "MAIL" });
            caseList.Add(new DocumentSearchItem { CreateDate = "105052011", DocID = "d0407080.001", DocType = "IMAGE", ContentType = "I", MailType = "FAX" });
            caseList.Add(new DocumentSearchItem { CreateDate = "105052011", DocID = "d0407080.001", DocType = "SIGN", ContentType = "I", MailType = "FAX" });
            caseList.Add(new DocumentSearchItem { CreateDate = "105052011", DocID = "d0407080.001", DocType = "NOTE", ContentType = "I", MailType = "FAX" });
            caseList.Add(new DocumentSearchItem { CreateDate = "105052011", DocID = "d0407080.001", DocType = "IMAGE", ContentType = "I", MailType = "MAIL" });
            caseList.Add(new DocumentSearchItem { CreateDate = "105052011", DocID = "d0407080.001", DocType = "NOTE", ContentType = "I", MailType = "FAX" });
            caseList.Add(new DocumentSearchItem { CreateDate = "105052011", DocID = "d0407080.001", DocType = "IMAGE", ContentType = "I", MailType = "FAX" });
            caseList.Add(new DocumentSearchItem { CreateDate = "105052011", DocID = "d0407080.001", DocType = "SIGN", ContentType = "I", MailType = "EMAIL" });
            caseList.Add(new DocumentSearchItem { CreateDate = "105052011", DocID = "d0407080.001", DocType = "IMAGE", ContentType = "I", MailType = "FAX" });
            caseList.Add(new DocumentSearchItem { CreateDate = "105052011", DocID = "d0407080.001", DocType = "SIGN", ContentType = "I", MailType = "EMAIL" });
            caseList.Add(new DocumentSearchItem { CreateDate = "105052011", DocID = "d0407080.001", DocType = "IMAGE", ContentType = "I", MailType = "FAX" });
            caseList.Add(new DocumentSearchItem { CreateDate = "105052011", DocID = "d0407080.001", DocType = "IMAGE", ContentType = "I", MailType = "FAX" });

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