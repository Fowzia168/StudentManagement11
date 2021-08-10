using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StudentInfo.Controllers
{
    public class loginController : Controller
    {
        //
        // GET: /login/


         [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(string name, string pass)
        {
            return View();
        }
	}
}