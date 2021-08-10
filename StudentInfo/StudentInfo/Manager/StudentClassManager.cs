using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StudentInfo.Gateway;
using StudentInfo.Models;

namespace StudentInfo.Manager
{
    public class StudentClassManager
    {



        public List<StudentClass> GetAllClass()
        {
            StudentClassGateway studentClassGateway = new StudentClassGateway();

            List<StudentClass> departments = studentClassGateway.GetAllClass();
            return departments;
        }


    }
}