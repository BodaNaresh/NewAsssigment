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
    public class BoardController : ApiController
    {
        [HttpPost]
        public DataTable Boardget(Board board)
        {
            BoardService service = new BoardService();
           // service.GetBoard();

            return service.GetBoard(board); ;
        }

    }
}
