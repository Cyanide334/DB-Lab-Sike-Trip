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




        // UPDATE BUS FUNCTIONS
        public void update_bus_manufacturer(string busID, string new_manufacturer)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Buses set Manufacturer = '" + new_manufacturer + "' where BusID = '" + Convert.ToInt32(busID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }
        }
        public void update_bus_model(string busID, string new_model)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Buses set Model = '" + new_model + "' where BusID = '" + Convert.ToInt32(busID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }
        }
        public void update_bus_capacity(string busID, string new_capacity)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Buses set Capacity = '" + Convert.ToInt32(new_capacity) + "' where BusID = '" + Convert.ToInt32(busID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }
        }
        public void update_bus_pricePerDay(string busID, string new_price)
        {

            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Buses set PricePerDay = '" + Convert.ToInt32(new_price) + "' where BusID = '" + Convert.ToInt32(busID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }

        }
        public void update_bus_referenceImage(string busID, string new_image)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Buses set ReferenceImage = '" + new_image + "' where BusID = '" + Convert.ToInt32(busID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }
        }
        public int update_bus_license(string busID, string new_license)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                cmd = new SqlCommand("dbo.updateBusLicense", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@newLicense", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@BusID", SqlDbType.Int);

                cmd.Parameters["@newLicense"].Value = new_license;
                cmd.Parameters["@BusID"].Value = Convert.ToInt32(busID);

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
        public int update_bus_registration(string busID, string new_reg)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                cmd = new SqlCommand("dbo.updateBusRegistration", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@newReg", SqlDbType.VarChar, 30);
                cmd.Parameters.Add("@BusID", SqlDbType.Int);

                cmd.Parameters["@newReg"].Value = new_reg;
                cmd.Parameters["@BusID"].Value = Convert.ToInt32(busID);

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

        //  UPDATE TOUR FUNCTIONS

        public void update_tour_departure(string tourID, string new_departure)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Tours set Departure = '" + new_departure + "' where TourID = '" + Convert.ToInt32(tourID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }


        }


        public void update_tour_destination(string tourID, string new_dest)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Tours set Destination = '" + new_dest + "' where TourID = '" + Convert.ToInt32(tourID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }


        }



        public void update_tour_departure_date(string tourID, string new_departure_date)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Tours set DepartureDate = '" + new_departure_date + "' where TourID = '" + Convert.ToInt32(tourID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }


        }

        public void update_tour_departure_time(string tourID, string new_departure_time)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Tours set DepartureTime = '" + new_departure_time + "' where TourID = '" + Convert.ToInt32(tourID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }


        }


        public void update_tour_arrival_date(string tourID, string new_arrival_date)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Tours set ArrivalDate = '" + new_arrival_date + "' where TourID = '" + Convert.ToInt32(tourID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }

        }

        public void update_tour_arrival_time(string tourID, string new_arrival_time)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Tours set ArrivalTime = '" + new_arrival_time + "' where TourID = '" + Convert.ToInt32(tourID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }


        }


        public void update_tour_return_date(string tourID, string new_return_date)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Tours set ReturnDate = '" + new_return_date + "' where TourID = '" + Convert.ToInt32(tourID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }


        }



        public void update_tour_return_time(string tourID, string new_return_time)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Tours set ReturnTime = '" + new_return_time + "' where TourID = '" + Convert.ToInt32(tourID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }


        }

        public void update_tour_price(string tourID, string new_price)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Tours set Price = '" + Convert.ToInt32(new_price) + "' where TourID = '" + Convert.ToInt32(tourID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }


        }


        public void update_tour_numberOfDays(string tourID, string new_number_of_days)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Tours set NumberOfDays = '" + Convert.ToInt32(new_number_of_days) + "' where TourID = '" + Convert.ToInt32(tourID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }


        }



        public void update_tour_tour_guide(string tourID, string new_tourguide)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Tours set tourguide = '" + new_tourguide + "' where TourID = '" + Convert.ToInt32(tourID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }


        }



        public void update_tour_bus_number(string tourID, string new_number)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Tours set bus_number = '" + new_number + "' where TourID = '" + Convert.ToInt32(tourID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }


        }
        public void update_tour_TotalCapacity(string tourID, string new_capacity)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Tours set TotalCapacity = '" + Convert.ToInt32(new_capacity) + "' where TourID = '" + Convert.ToInt32(tourID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }


        }
        public void update_tour_reference_image(string tourID, string new_image)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;

            try
            {
                string qry = "update Tours set ReferenceImage = '" + new_image + "' where TourID = '" + Convert.ToInt32(tourID) + "'";

                cmd = new SqlCommand(qry, con);
                cmd.ExecuteNonQuery();
                con.Close();
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }


        }


        //Tour getters
        public string return_departure_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {
                string qry = "select Departure from Tours where TourID = '" + tid + "'";

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

                string qry = "select Destination from Tours where TourID = '" + tid + "'";

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

                string qry = "select DepartureDate from Tours where TourID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value = cmd.ExecuteScalar().ToString();
                con.Close();

                return value.ToString();

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return "";

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

                string qry = "select DepartureTime from Tours where TourID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value = cmd.ExecuteScalar().ToString();
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

                string qry = "select ArrivalTime from Tours where TourID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value = cmd.ExecuteScalar().ToString();
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

                string qry = "select ReturnDate from Tours where TourID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                string value =cmd.ExecuteScalar().ToString();
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
        public int return_reservation_count_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {

                string qry = "select ReservationCount from Tours where TourID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                int value = (int)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return -1;

            }

        }

        //price of tour
        public int return_price_of_tour_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {

                string qry = "select Price from Tours where TourID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                int value = (int)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return -1;

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
                string qry = "select tourguide from Tours where TourID = '" + tid + "'";

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

        // tour reference image

        public string return_tour_reference_image_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {
                string qry = "select ReferenceImage from Tours where TourID = '" + tid + "'";

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
        public int return_number_of_days_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {
                string qry = "select NumberOfDays from Tours where TourID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                int value = (int)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return -1;

            }

        }




        public int return_total_capacity_from_db(string _tid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int tid = Convert.ToInt16(_tid);

            try
            {
                string qry = "select TotalCapacity from Tours where TourID = '" + tid + "'";

                cmd = new SqlCommand(qry, con);
                int value = (int)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return -1;

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
                string qry = "select bus_number from Tours where TourID = '" + tid + "'";

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
                string qry = "select Manufacturer from Buses where BusID = '" + bid + "'";

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

        // bus model
        public string return_bus_model_from_db(string _bid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int bid = Convert.ToInt16(_bid);

            try
            {
                string qry = "select Model from Buses where BusID = '" + bid + "'";

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
        public int return_bus_capacity_from_db(string _bid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int bid = Convert.ToInt16(_bid);

            try
            {
                string qry = "select Capacity from Buses where BusID = '" + bid + "'";

                cmd = new SqlCommand(qry, con);
                int value = (int)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return -1;

            }

        }

        //PricePerKm
        public int return_bus_priceperday_from_db(string _bid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int bid = Convert.ToInt16(_bid);

            try
            {
                string qry = "select PricePerDay from Buses where BusID = '" + bid + "'";

                cmd = new SqlCommand(qry, con);
                int value = (int)cmd.ExecuteScalar();
                con.Close();

                return value;

            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);
                return -1;

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

        // Bus refrence image
        public string return_bus_reference_image_from_db(string _bid)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            int bid = Convert.ToInt16(_bid);

            try
            {
                string qry = "select ReferenceImage from Buses where BusID = '" + bid + "'";

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


        //LOG UPDATE FUNCTIONS
        public void busBooking(string username, string busID, string startdate, string days) 
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;
            

            try
            {

                cmd = new SqlCommand("dbo.insertIntoLogBus", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@username", SqlDbType.VarChar, 40);
                cmd.Parameters.Add("@busID", SqlDbType.Int);
                cmd.Parameters.Add("@startdate", SqlDbType.Date);
                cmd.Parameters.Add("@days", SqlDbType.Int);

                cmd.Parameters["@username"].Value = username;
                cmd.Parameters["@busID"].Value = Convert.ToInt32(busID);
                cmd.Parameters["@startdate"].Value = startdate;
                cmd.Parameters["@days"].Value = Convert.ToInt32(days);

                cmd.ExecuteNonQuery();
                con.Close();
                return;
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }

        }
        public void TourBooking(string username, string TourID, string tickets)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd;


            try
            {

                cmd = new SqlCommand("dbo.insertIntoLogTour", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@username", SqlDbType.VarChar, 40);
                cmd.Parameters.Add("@tourID", SqlDbType.Int);
                cmd.Parameters.Add("@tickets", SqlDbType.Int);

                cmd.Parameters["@username"].Value = username;
                cmd.Parameters["@tourID"].Value = Convert.ToInt32(TourID);
                cmd.Parameters["@tickets"].Value = Convert.ToInt32(tickets);
                cmd.ExecuteNonQuery();
                con.Close();
                return;
            }

            catch (Exception ex)
            {
                System.Web.HttpContext.Current.Response.Write(ex.Message);

            }

        }



    }







    





}





















