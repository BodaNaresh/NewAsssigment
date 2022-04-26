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
    public class AdminApiController : ApiController
    {
        TodoService service = new TodoService();

        [HttpGet]
        
        public DataTable GetAllTodos()
        {
            return service.GetTodos();
        }

        [HttpPost]
        public string PostToDo(Todo list)
        {
            service.PostAllTodo(list);

            return "Inserted Successfully";
         
        }
    
        [HttpDelete]
        public string DeleteToDo(int id)
        {
            service.TodoDelete(id);
            return "Deleted Successfully";
        }


        [HttpPut]
        public string UpdateToDo(Todo todo, int id)
        {
            TodoService service = new TodoService();
            service.TodoUpdate(todo, id);
            return "Updated Successfully";
        }
    }



}

