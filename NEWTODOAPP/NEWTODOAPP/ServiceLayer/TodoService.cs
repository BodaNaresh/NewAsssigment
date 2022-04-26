using NEWTODOAPP.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace NEWTODOAPP.ServiceLayer
{
    public class TodoService
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ToString());
        DataTable dt = new DataTable();

        public DataTable GetTodos()
        {
            using (SqlCommand cmd = new SqlCommand("GetTodo", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(dt);
                }
            }
            return dt;
        }

        public DataTable PostAllTodo(Todo list)
        {
            using (SqlCommand cmd = new SqlCommand("CreateTodo", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Title", list.Title);
                cmd.Parameters.AddWithValue("@Status", list.Status);

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(dt);
                }

                return dt;
            }

        }

        public DataTable TodoUpdate(Todo todo, int id)
        {
            using (SqlCommand cmd = new SqlCommand("UpdateTodo", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@TodoId", id);
                cmd.Parameters.AddWithValue("@Title", todo.Title);
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(dt);
                }
            }
            return dt;
        }
        public DataTable TodoDelete(int id)
        {
            using (SqlCommand cmd = new SqlCommand("DeleteTodo", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@TodoId", id);
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(dt);
                }
                return dt;
            }
        }
    }
}