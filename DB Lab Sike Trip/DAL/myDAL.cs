﻿using System;
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
    string contact, string credit, string DOB, ref int rtn)
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
                cmd.Parameters.Add("@DateOfBirth", SqlDbType.VarChar, 20);
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



                var returnParameter = cmd.Parameters.Add("@ReturnVal", SqlDbType.Int);
                returnParameter.Direction = ParameterDirection.ReturnValue;




                cmd.ExecuteNonQuery();
                rtn = (int)cmd.Parameters["@ReturnVal"].Value;
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


        public void log_in(string username, string password, ref bool success, ref string outputString)
        {

            SqlConnection con = new SqlConnection(conString);
            try
            {
                string uid = username;
                string pass = password;
                con.Open();
                string qry = "select * from Users where Username='" + uid + "' and Password='" + pass + "'";

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


        public string return_name_from_db(string username)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;


            try
            {

                string uid = username;
                
               string qry = "select FullName from Users where Username = '" + uid +"'";

               cmd = new SqlCommand(qry, con);
               string value = (string)cmd.ExecuteScalar();
               con.Close();

                return value;

            }

             catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        public string return_email_from_db(string username)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;


            try
            {

                string uid = username;

                string qry = "select email from Users where Username = '" + uid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        public string return_phone_from_db(string username)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;


            try
            {

                string uid = username;

                string qry = "select ContactNo from Users where Username = '" + uid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        public string return_city_from_db(string username)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;


            try
            {

                string uid = username;

                string qry = "select city from Users where Username = '" + uid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        public string return_country_from_db(string username)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;


            try
            {

                string uid = username;

                string qry = "select country from Users where Username = '" + uid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        public string return_credit_from_db(string username)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;


            try
            {

                string uid = username;

                string qry = "select CreditCardNo from Users where Username = '" + uid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        public string return_password_from_db(string username)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;


            try
            {

                string uid = username;

                string qry = "select Password from Users where Username = '" + uid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        public string return_dob_from_db(string username)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;


            try
            {

                string uid = username;

                string qry = "select DateOfBirth from Users where Username = '" + uid + "'";

                cmd = new SqlCommand(qry, con);
                DateTime value = (DateTime)cmd.ExecuteScalar();     // cast the return value to DateTime
                con.Close();
                string formattedDate = value.ToString("dd/MM/yyyy"); // format date to dd//mm//yyyy format
                return formattedDate;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        public void update_name(string username, string new_name)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Users set FullName = '" + new_name + "' where Username = '" + username + "'" ;

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
               
            }
        }

        public void update_password(string username, string new_name)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Users set Password = '" + new_name + "' where Username = '" + username + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }
        }

        public void update_city(string username, string new_city)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Users set City = '" + new_city + "' where Username = '" + username + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }
        }

        public void update_country(string username, string new_country)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Users set Country = '" + new_country + "' where Username = '" + username + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }
        }

        public void update_phone(string username, string new_phone)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Users set ContactNo = '" + new_phone + "' where Username = '" + username + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }
        }


        public int update_credit(string username, string new_credit)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                cmd = new SqlCommand("dbo.updateCredit", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@newCredit", SqlDbType.VarChar, 13);
                cmd.Parameters.Add("@Username", SqlDbType.VarChar, 30);

                cmd.Parameters["@newCredit"].Value = new_credit;
                cmd.Parameters["@Username"].Value = username;

                var returnParameter = cmd.Parameters.Add("@ReturnVal", SqlDbType.Int);
                returnParameter.Direction = ParameterDirection.ReturnValue;




                cmd.ExecuteNonQuery();
                return (int)cmd.Parameters["@ReturnVal"].Value;
           

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return 2;

            }
        }


        public int update_username(string username, string new_username)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                cmd = new SqlCommand("dbo.updateUsername", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@newUsername", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@CurrentUsername", SqlDbType.VarChar, 30);

                cmd.Parameters["@newUsername"].Value = new_username;
                cmd.Parameters["@currentUsername"].Value = username;

                var returnParameter = cmd.Parameters.Add("@ReturnVal", SqlDbType.Int);
                returnParameter.Direction = ParameterDirection.ReturnValue;




                cmd.ExecuteNonQuery();
                return (int)cmd.Parameters["@ReturnVal"].Value;


            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return 2;

            }
        }


        public int update_email(string username, string new_email)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                cmd = new SqlCommand("dbo.updateEmail", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@newEmail", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@Username", SqlDbType.VarChar, 30);

                cmd.Parameters["@newEmail"].Value = new_email;
                cmd.Parameters["@Username"].Value = username;

                var returnParameter = cmd.Parameters.Add("@ReturnVal", SqlDbType.Int);
                returnParameter.Direction = ParameterDirection.ReturnValue;




                cmd.ExecuteNonQuery();
                return (int)cmd.Parameters["@ReturnVal"].Value;


            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return 2;

            }
        }


        //view tour functions
        public string return_departure_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {
                string qry = "select Departure from Tours where ToursID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //destination
        public string return_destination_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {

                string qry = "select Destination from Tours where ToursID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //departure date
        public string return_departure_date_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {

                string qry = "select DepartureDate from Tours where ToursID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //departure time
        public string return_departure_time_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {

                string qry = "select DepartureTime from Tours where ToursID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //arrival time
        public string return_arrival_time_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {

                string qry = "select ArrivalTime from Tours where ToursID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //return date
        public string return_return_date_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {

                string qry = "select ReturnDate from Tours where ToursID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //reservation count
        public string return_reservation_count_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {

                string qry = "select ReservationCount from Tours where ToursID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //price of tour
        public string return_price_of_tour_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {

                string qry = "select Price from Tours where ToursID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //number of days
        public string return_number_of_days_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {
                string qry = "select NumberOfDays from Tours where ToursID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //returns number of available tours
        public int get_tours_from_db()
        {

            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                cmd = new SqlCommand("dbo.available_tours", con);
                cmd.CommandType = CommandType.StoredProcedure;


                var returnParameter = cmd.Parameters.Add("@ReturnVal", SqlDbType.Int);
                returnParameter.Direction = ParameterDirection.ReturnValue;

                cmd.ExecuteNonQuery();
                return (int)cmd.Parameters["@ReturnVal"].Value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return -1;
            }

        }
        public SqlDataReader get_tours()
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                cmd = new SqlCommand("dbo.selectTours", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataReader reader = cmd.ExecuteReader();

                return reader;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;
            }





        }





        public SqlDataReader get_buses()
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                cmd = new SqlCommand("dbo.selectBuses", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlDataReader reader = cmd.ExecuteReader();

                return reader;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;
            }
        }

        //view bus functions
        //bus make
        //get bus number

        public string return_bus_number_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {
                string qry = "select BusNumber from Tours where ToursID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        public string return_bus_make_from_db(string _bid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int bid = Convert.ToInt16(_bid);

            try
            {
                string qry = "select BusMake from Buses where BusID = '" + bid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //license number
        public string return_bus_license_number_from_db(string _bid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int bid = Convert.ToInt16(_bid);

            try
            {
                string qry = "select LicenseNumber from Buses where BusID = '" + bid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //Registration number
        public string return_bus_registration_number_from_db(string _bid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int bid = Convert.ToInt16(_bid);

            try
            {
                string qry = "select RegistrationNo from Buses where BusID = '" + bid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //capacity
        public string return_bus_capacity_from_db(string _bid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int bid = Convert.ToInt16(_bid);

            try
            {
                string qry = "select Capacity from Buses where BusID = '" + bid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //PricePerKm
        public string return_bus_priceperkm_from_db(string _bid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int bid = Convert.ToInt16(_bid);

            try
            {
                string qry = "select PricePerKm from Buses where BusID = '" + bid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //Reservation Count
        public string return_bus_reservation_count_from_db(string _bid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int bid = Convert.ToInt16(_bid);

            try
            {
                string qry = "select ReservationCount from Buses where BusID = '" + bid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

        //get tour guide name
        public string return_tour_guide_name_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {
                string qry = "select TourGuideName from Tours where TourID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value = (string)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return null;

            }

        }

    }







    





}





















