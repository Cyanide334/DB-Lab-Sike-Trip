using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace DB_Lab_Sike_Trip.DAL
{
    public class myDAL
    {
        private static readonly string conString =
        System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;




        public DataSet SelectItem()
        {

            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("Select * from test", con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch
            {
                Console.WriteLine("SQL Error ");
            }
            finally
            {
                con.Close();
            }

            return ds;
        }












        public void sign_up(string name, string username, string password, string email, string country, string city,
            string contact, string credit)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;




            cmd = new SqlCommand("signup ", con);
            cmd.CommandType = CommandType.StoredProcedure;
            // adding parameters to cmd
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 40);
            cmd.Parameters.Add("@username", SqlDbType.VarChar, 40);
            cmd.Parameters.Add("@mail", SqlDbType.VarChar, 30);
            cmd.Parameters.Add("@password", SqlDbType.VarChar, 40);
            cmd.Parameters.Add("@contact", SqlDbType.VarChar, 12);
            cmd.Parameters.Add("@credit", SqlDbType.VarChar, 16);

            cmd.Parameters["@name"].Value = name;
            cmd.Parameters["@username"].Value = username;
            cmd.Parameters["@password"].Value = password;
            cmd.Parameters["@mail"].Value = email;
            cmd.Parameters["@contact"].Value = contact;
            cmd.Parameters["@credit"].Value = credit;
            try
            {

                cmd.ExecuteNonQuery();
                Console.WriteLine("C# is cool");
                return;

            }
            catch
            {


            }
            finally
            {
                con.Close();
            }

        }
    }


  
        
        }


   