using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NEWTODOAPP.Models
{
    public class Register
    {
        public int UserID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Gender { get; set; }
        public string Mobile { get; set; }
        public string Password { get; set; }
        public string Location { get; set; }
    }
}