using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLibrary.Models
{
    public class TaskSearchItem
    {
        public string TaskID { get; set; }
        public string TaskType { get; set; }
        public string Status { get; set; }
        public string Department { get; set; }

        public string DescriptionName { get; set; }
        public string Workbasket { get; set; }
        public string RecdDate { get; set; }
        public string RecdTime { get; set; }

        public string CreateDate { get; set; }
        public string CreateTime { get; set; }


        public string IdentifierType { get; set; }
        public string IdentifierValue { get; set; }

    }
}
