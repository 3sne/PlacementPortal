using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PlacementPortal
{
    public class GlobalStrings
    {
        // Database strings
        public static readonly string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Desktop\IT Project\PlacementPortal\PlacementPortal\App_Data\db_placement.mdf;Integrated Security=True";
        public static readonly string tAuthStudent = "auth_student";
        public static readonly string tAuthRecruiter = "auth_recruiter";
        public static readonly string tAuthAdmin = "auth_admin";

    }
}