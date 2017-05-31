using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebExcepBlock
{
    public partial class ActivityList : System.Web.UI.Page
    {
        public class ActivityItem
        {
            public String CreateDate { get; set; }
            public String CreateTime { get; set; }
            public String Operator { get; set; }
            public String Department { get; set; }
            public String TaskType { get; set; }
            public String ActionStep { get; set; }
            public String Wrkbkt { get; set; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            BindTheGrid();
        }
        public void BindTheGrid()
        {
            List<ActivityItem> activityList = new List<ActivityItem>();
            activityList.Add(new ActivityItem { CreateDate = "07/22/2004", CreateTime = "10:51:40", Operator = "Park", Department = "CONTROL", TaskType = "ADDRESSCHG", ActionStep = "PROCESS", Wrkbkt = "Mark" });
            activityList.Add(new ActivityItem { CreateDate = "07/23/2004", CreateTime = "13:55:40", Operator = "Park", Department = "CONTROL", TaskType = "ADDRESSCHG", ActionStep = "QA", Wrkbkt = "Mark" });
            activityList.Add(new ActivityItem { CreateDate = "07/23/2004", CreateTime = "13:51:40", Operator = "Park", Department = "CONTROL", TaskType = "ADDRESSCHG", ActionStep = "QC", Wrkbkt = "Mark" });
            activityList.Add(new ActivityItem { CreateDate = "07/25/2004", CreateTime = "15:33:40", Operator = "Mike", Department = "CONTROL", TaskType = "ADDRESSCHG", ActionStep = "REVIEW", Wrkbkt = "Mark" });
            activityList.Add(new ActivityItem { CreateDate = "07/25/2004", CreateTime = "13:51:40", Operator = "Mike", Department = "CONTROL", TaskType = "ADDRESSCHG", ActionStep = "PROCESS", Wrkbkt = "Mark" });
            activityList.Add(new ActivityItem { CreateDate = "07/26/2004", CreateTime = "13:45:40", Operator = "Mike", Department = "CONTROL", TaskType = "ADDRESSCHG", ActionStep = "REVIEW", Wrkbkt = "Mark" });
            activityList.Add(new ActivityItem { CreateDate = "07/27/2004", CreateTime = "18:51:40", Operator = "Park", Department = "CONTROL", TaskType = "ADDRESSCHG", ActionStep = "PROCESS", Wrkbkt = "Mark" });
            activityList.Add(new ActivityItem { CreateDate = "07/27/2004", CreateTime = "13:51:40", Operator = "Park", Department = "CONTROL", TaskType = "ADDRESSCHG", ActionStep = "QA", Wrkbkt = "Mark" });
            activityList.Add(new ActivityItem { CreateDate = "07/27/2004", CreateTime = "13:51:40", Operator = "Park", Department = "CONTROL", TaskType = "ADDRESSCHG", ActionStep = "PROCESS", Wrkbkt = "Mark" });

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