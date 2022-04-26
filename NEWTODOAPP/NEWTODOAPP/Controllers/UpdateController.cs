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
    public class UpdateController : ApiController
    {
       
        [HttpPut]
        public string UpdateStatus(Todo todo, int id)
        {
            UpdateService service = new UpdateService();
            service.StatusUpdate(todo, id);

            return "Updated Successfully";
        }



       
    }
}