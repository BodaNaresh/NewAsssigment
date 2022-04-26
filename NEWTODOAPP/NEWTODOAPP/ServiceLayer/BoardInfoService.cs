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
    public class BoardInfoService
    {
        DataTable dt = new DataTable();
        public DataTable PostBoardinfo(Board board)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ToString()))
            using (SqlCommand cmd = new SqlCommand("insert into Boards(BoardName)values('" + board.BoardName + "')", con))
            {
                cmd.CommandType = CommandType.Text;
                // cmd.Parameters.AddWithValue("@BoardName", board.BoardName);
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(dt);
                }
            }
            return dt;
        }


        public DataTable GetBoardata()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnectionString"].ToString()))
            using (SqlCommand cmd = new SqlCommand("select BoardID,BoardName from Boards", con))
            {
                cmd.CommandType = CommandType.Text;
                // cmd.Parameters.AddWithValue("@BoardName", board.BoardName);
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(dt);
                }
            }
            return dt;
        }
    }
}