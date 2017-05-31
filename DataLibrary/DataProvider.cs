using DataLibrary.Models;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLibrary
{
    public class DataProvider
    {
        public List<TaskSearchItem> SearchTask()
        {
            List<TaskSearchItem> taskList = new List<TaskSearchItem>();

            // Create a database object
            Database db = DatabaseFactory.CreateDatabase("PIDB");
          
            DataSet resultData = db.ExecuteDataSet("GetTaskListWithIdentifiers", "A", "A");

            if (resultData != null && resultData.Tables[0] != null)
            {
                string previous = string.Empty; 
                foreach (DataRow dr in resultData.Tables[0].Rows)
                {
                    if (previous != dr["TaskId"].ToString())
                    {
                        taskList.Add(new TaskSearchItem { TaskID = dr["TaskId"].ToString(), TaskType = dr["TaskType"] as string, Status = dr["Status"] as string, Department = dr["Department"] as string, DescriptionName = dr["DescriptionName"] as string, Workbasket = dr["Workbasket"] as string, RecdDate = dr["RecdDate"] as string, RecdTime = dr["RecdTime"] as string, CreateDate = dr["CreateDate"] as string, CreateTime = dr["CreateTime"] as string, IdentifierType = dr["IdentifierType"] as string, IdentifierValue = dr["IdentifierValue"] as string });
                    }
                    else
                    {
                        taskList.Add(new TaskSearchItem { TaskID = dr["TaskId"].ToString(), IdentifierType = dr["IdentifierType"] as string, IdentifierValue = dr["IdentifierValue"] as string });
                    }

                    previous = dr["TaskId"].ToString();

                }
                return taskList;
            }
            else
            {
                return taskList;
            }
        }
    }
}
