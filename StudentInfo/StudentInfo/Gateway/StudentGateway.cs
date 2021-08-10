using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StudentInfo.Models;

namespace StudentInfo.Gateway
{
    public class StudentGateway : BaseGateway
    {
        public int Save(Student student)
        {

           

            string query =
               "INSERT INTO Student_table (StudentName,Address,AdmissionDate,Class) VALUES ('" + student.StudentName + "','" + student.Address + "','" + student.AdmissionDate + "','" + student.Class + "')";
            
            
            Command = new SqlCommand(query, Connection);

            Connection.Open();
            int rowAffected = Command.ExecuteNonQuery();

            Command.Connection.Close();
            return rowAffected;
        }

        




    }
}