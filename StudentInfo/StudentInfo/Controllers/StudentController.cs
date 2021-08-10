using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using StudentInfo.Manager;
using StudentInfo.Models;

namespace StudentInfo.Controllers
{
    public class StudentController : Controller
    {
        
        StudentManager studentManager = new StudentManager();
        StudentClassManager studentClassManager=new StudentClassManager();
        


        [HttpGet]
        public ActionResult SaveStudent()
        {
            ViewBag.ClassList = studentClassManager.GetAllClass();


            return View();
        }
        [HttpPost]
        public ActionResult SaveStudent(Student student)
        {

            ViewBag.ClassList = studentClassManager.GetAllClass().ToList();
            ViewBag.message = studentManager.Save(student);
            ModelState.Clear();
            return View();
        }

        



        
	}
}