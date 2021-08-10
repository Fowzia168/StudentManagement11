using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StudentInfo.Manager;
using StudentInfo.Models;

namespace StudentInfo.Controllers
{
    public class StudentViewController : Controller
    {
        //
        // GET: /StudentView/

        GetAllStudentViewManager getAllStudentViewManager = new GetAllStudentViewManager();
      
        public ActionResult Index()
        {
            List<GetAllStudentView> studentDetails = getAllStudentViewManager.ViewCourse();
            ViewBag.Students = studentDetails;
            return View();

        }





	}
}