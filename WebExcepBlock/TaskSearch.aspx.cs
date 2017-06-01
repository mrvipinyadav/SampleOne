using DataLibrary;
using DataLibrary.Models;
using Microsoft.Practices.EnterpriseLibrary.ExceptionHandling;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Excel = Microsoft.Office.Interop.Excel;

namespace WebExcepBlock
{

    public partial class TaskSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadSearchFileters();
            }
        }

        public void LoadSearchFileters()
        {
            //Set default dates in filters
            createDateStart.Value = DateTime.Now.Date.ToShortDateString();
            createDateEnd.Value = DateTime.Now.Date.ToShortDateString();

            //Bind the filter controls from configuration.
            departmentID.DataSource = ConfigurationManager.AppSettings["DepartmentList"].Split(',');
            departmentID.DataBind();
            taskStatus.DataSource = ConfigurationManager.AppSettings["TaskStatusList"].Split(',');
            taskStatus.DataBind();
            taskType.DataSource = ConfigurationManager.AppSettings["TaskTypeList"].Split(',');
            taskType.DataBind();
            identifierType1.DataSource = ConfigurationManager.AppSettings["IdentifiersList"].Split(',');
            identifierType1.DataBind();
            identifierType2.DataSource = ConfigurationManager.AppSettings["IdentifiersList"].Split(',');
            identifierType2.DataBind();
            identifierType3.DataSource = ConfigurationManager.AppSettings["IdentifiersList"].Split(',');
            identifierType3.DataBind();
        }

        public void BindTheGrid()
        {
            try
            {
                List<TaskSearchItem> taskList;

                DataProvider dataProvider = new DataProvider();
                taskList = dataProvider.SearchTask();

                if (taskList != null && taskList.Count > 0)
                {
                    taskGridView.DataSource = taskList;
                    taskGridView.DataBind();
                    btnExport.Visible = true;
                }
            }
            catch (Exception ex)
            {
                ExceptionPolicy.HandleException(ex, "ExceptionPolicy");
                lblError.Text = "Some technical exception occured while getting data.";
            }

        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindTheGrid();
        }

        protected void taskGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            taskGridView.PageIndex = e.NewPageIndex;
            BindTheGrid();
        }

        protected void btnExport_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();
        }

        private void ExportGridToExcel()
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "Data" + DateTime.Now + ".xls";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);

            using (StringWriter sw = new StringWriter())
            {

                StringWriter strwritter = new StringWriter();
                HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
                taskGridView.AllowPaging = false;
                taskGridView.Columns[10].Visible = false;
                taskGridView.Columns[11].Visible = false;
                taskGridView.Columns[12].Visible = false;
                BindTheGrid();
                taskGridView.GridLines = GridLines.Both;
                taskGridView.HeaderStyle.Font.Bold = true;
                taskGridView.RenderControl(htmltextwrtter);
                Response.Write(strwritter.ToString());
                Response.End();
                htmltextwrtter.Dispose();
            }
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control);
        }
        public override bool EnableEventValidation
        {
            get { return false; }
            set { /*Do nothing*/ }
        }
    }
}