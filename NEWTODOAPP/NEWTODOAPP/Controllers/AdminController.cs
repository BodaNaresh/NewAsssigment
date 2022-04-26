using NEWTODOAPP.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using Newtonsoft.Json;
using System.Web.Mvc;

namespace NEWTODOAPP.Controllers
{
    public class AdminController : Controller
    {
     
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Home()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        public ActionResult Register()
        {
            return View();
        }

        public ActionResult Todoitem()
        {
            return View();
        }

       




    } 
}
