using NEWTODOAPP.Models;
using NEWTODOAPP.ServiceLayer;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace NEWTODOAPP.Controllers
{
    public class UserController : ApiController
    {


        [HttpPost]
        public string PostData(Register register)
        {
            UserService service = new UserService();
            service.DataPost(register);
            return "Inserted Successfully";
        }
    }
}
