using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StudentInfo.Models;

namespace StudentInfo.Gateway
{
    public class StudentClassGateway:BaseGateway
    {

        public List<StudentClass> GetAllClass()
        {

            string query = "SELECT * FROM StudentClass_table";
            Command = new SqlCommand(query, Connection);
            Connection.Open();
            Reader = Command.ExecuteReader();
            List<StudentClass> students = new List<StudentClass>();
            while (Reader.Read())
            {
                StudentClass studentClass = new StudentClass();
                studentClass.Id = (int)Reader["Id"];
                studentClass.ClassName = Reader["ClassName"].ToString();

                students.Add(studentClass);
            }
            Connection.Close();
            return students;
        }


    }
}