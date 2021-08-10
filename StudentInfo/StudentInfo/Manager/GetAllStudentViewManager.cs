using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StudentInfo.Gateway;
using StudentInfo.Models;

namespace StudentInfo.Manager
{
    public class GetAllStudentViewManager
    {

        public List<GetAllStudentView> ViewCourse()
        {
            GetAllStudentViewGateway getAllStudentViewGateway = new GetAllStudentViewGateway();
            return getAllStudentViewGateway.ViewStudent();
        }




    }
}