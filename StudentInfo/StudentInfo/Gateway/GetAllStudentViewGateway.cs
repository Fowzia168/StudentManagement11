using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Microsoft.Owin.BuilderProperties;
using StudentInfo.Models;

namespace StudentInfo.Gateway
{
    public class GetAllStudentViewGateway:BaseGateway
    {
       



        public List<GetAllStudentView> ViewStudent()
        {

            string query = "SELECT * FROM GetAllStudentView";


            Command = new SqlCommand(query, Connection);
            List<GetAllStudentView> studentList = new List<GetAllStudentView>();

            Connection.Open();
            Reader = Command.ExecuteReader();

            while (Reader.Read())
            {
                GetAllStudentView studentView = new GetAllStudentView()
                {
                    Id = Convert.ToInt32(Reader["Id"].ToString()),
                    StudentName = Reader["StudentName"].ToString(),
                    AdmissionDate = Reader["AdmissionDate"].ToString(),
                    Address = Reader["Address"].ToString(),
                    ClassName = Reader["ClassName"].ToString()

                };
               
                studentList.Add(studentView);
            }

            Connection.Close();

            return studentList;
        }






    }
}