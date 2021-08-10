using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace StudentInfo.Gateway
{
    public class BaseGateway
    {

        public string connectionString { get; set; }
        public SqlConnection Connection { get; set; }
        public SqlCommand Command { get; set; }
        public SqlDataReader Reader { get; set; }

        public BaseGateway()
        {
            connectionString = WebConfigurationManager.ConnectionStrings["StudentManagementConString"].ConnectionString;
            Connection = new SqlConnection(connectionString);

        }


    }
}