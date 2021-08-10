using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StudentInfo.Gateway;
using StudentInfo.Models;

namespace StudentInfo.Manager
{
    public class StudentManager
    {
        public string Save(Student student)
        {
            StudentGateway studentGateway = new StudentGateway();
          
                int rowAffect = studentGateway.Save(student);
                if (rowAffect > 0)
                {
                    return "Student Saved";
                }
                else
                {
                    return "Student Save failed";
                }

            }

        }
         
    }
