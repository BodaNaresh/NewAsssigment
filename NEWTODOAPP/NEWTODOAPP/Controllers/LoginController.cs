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
    public class LoginController : ApiController
    {
        DataTable dt = new DataTable();

        [HttpPost]
        public DataTable GetCredentials(Register login)
        {
            LoginService service = new LoginService();
            service.PostCredentials(login);
            return dt;
        }
    }
}
