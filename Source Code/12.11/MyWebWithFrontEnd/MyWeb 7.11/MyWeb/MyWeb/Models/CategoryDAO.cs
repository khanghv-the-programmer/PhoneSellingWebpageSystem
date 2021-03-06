﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MyWeb.Models
{
    public class CategoryDAO
    {
        string conn = MyConnection.Class1.getConnection();

        public List<Category> GetAllCategories()
        {
            List<Category> list = null;
            try
            {
                SqlConnection sqlConn = new SqlConnection(conn);
                string sql = "Select * From Category";
                SqlCommand comm = new SqlCommand(sql, sqlConn);
                if (sqlConn.State == ConnectionState.Closed)
                {
                    sqlConn.Open();
                }
                SqlDataReader reader = comm.ExecuteReader();
                list = new List<Category>();
                while (reader.Read())
                {
                    Category c = new Category(reader["CategoryID"].ToString(), reader["CategoryName"].ToString());
                    list.Add(c);
                }
            }
            catch (Exception e)
            {
                throw;
            }
            return list;
        }
    }
}