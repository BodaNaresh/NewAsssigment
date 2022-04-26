using NEWTODOAPP.Models;
using NEWTODOAPP.ServiceLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace NEWTODOAPP.Controllers
{
    public class BoardInfoController : ApiController
    {

        [HttpGet]
        public DataTable GetBoardInfo()
        {
            BoardInfoService service = new BoardInfoService();

           return service.GetBoardata();
        }



        [HttpPost]

        public string Boardinfopost(Board boards)
        {
            BoardInfoService service = new BoardInfoService();

            service.PostBoardinfo(boards);
            return "sucessfullyposted";
        }
    }
}
