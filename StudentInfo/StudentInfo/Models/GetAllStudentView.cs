using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StudentInfo.Models
{
    public class GetAllStudentView
    {
        public int Id { get; set; }

        public string StudentName { get; set; }
        public string AdmissionDate { get; set; }
        public string Address { get; set; }

        public string ClassName { get; set; }
    }
}