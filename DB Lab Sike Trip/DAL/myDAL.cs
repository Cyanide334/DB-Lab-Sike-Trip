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


        public void sign_up(string name, string username, string password, string email, string country, string city,
    string contact, string credit, string DOB)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;


            try
            {

                cmd = new SqlCommand("dbo.signup", con);
                cmd.CommandType = CommandType.StoredProcedure;

               
                cmd.Parameters.Add("@UsertType", SqlDbType.Int);
                cmd.Parameters.Add("@FullName", SqlDbType.VarChar, 40);
                cmd.Parameters.Add("@Username", SqlDbType.VarChar, 40);
                cmd.Parameters.Add("@Email", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Password", SqlDbType.VarChar, 40);
                cmd.Parameters.Add("@DateOfBirth", SqlDbType.VarChar,20);
                cmd.Parameters.Add("@ContactNo", SqlDbType.VarChar, 12);
                cmd.Parameters.Add("@CreditCardNo", SqlDbType.VarChar, 16);
                cmd.Parameters.Add("@City", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Country", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@TotalBusServicesProvided", SqlDbType.Int);
                cmd.Parameters.Add("@TotalTourServicesProvided", SqlDbType.Int);
                

                
                cmd.Parameters["@UsertType"].Value = 1;
                cmd.Parameters["@FullName"].Value = name;
                cmd.Parameters["@Username"].Value = username;
                cmd.Parameters["@Password"].Value = password;
                cmd.Parameters["@Email"].Value = email;
                cmd.Parameters["@ContactNo"].Value = contact;
                cmd.Parameters["@CreditCardNo"].Value = credit;
                cmd.Parameters["@DateOfBirth"].Value = DOB;
                cmd.Parameters["@City"].Value = city;
                cmd.Parameters["@Country"].Value = country;
                cmd.Parameters["@TotalBusServicesProvided"].Value = 0;
                cmd.Parameters["@TotalTourServicesProvided"].Value = 0;
               



                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
            }

        }

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







        public void log_in(string username, string password, ref bool success)
        {

            SqlConnection con = new SqlConnection(conString);
            


            try
            {
                string uid = username;
                string pass = password;
                con.Open();
                string qry = "select * from Users where Username='" + uid + "' and Password='" + pass + "'";
                //string qry = "select * from Users where Username= 'Cyan ' and Password='mashedpotatoes'" ; for checking

                SqlCommand cmd = new SqlCommand(qry, con);
                
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    success = true;
                }
                else
                {
                    success = false;

                }
                con.Close();
            }
            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
            }
        }


    }







}







    


  
        
        


   