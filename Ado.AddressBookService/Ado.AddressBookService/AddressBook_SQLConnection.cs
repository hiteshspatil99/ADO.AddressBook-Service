using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Ado.AddressBookService
{
   public class AddressBook_SQLConnection
    {

        private SqlConnection con;
        private void Connection()
        {
            string CS = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=AddressBookService;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            con = new SqlConnection(CS);
        }
        public AddressBook_Model AddContact(AddressBook_Model model)
        {
            try
            {
                Connection();
                SqlCommand com = new SqlCommand("AddAddressBookService", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@FirstName", model.FirstName);
                com.Parameters.AddWithValue("@LastName", model.LastName);
                com.Parameters.AddWithValue("@Address", model.Address);
                com.Parameters.AddWithValue("@City", model.City);
                com.Parameters.AddWithValue("@State", model.State);
                com.Parameters.AddWithValue("@Zip", model.Zip);
                com.Parameters.AddWithValue("@PhoneNo", model.PhoneNo);
                com.Parameters.AddWithValue("@Email", model.Email);
                com.Parameters.AddWithValue("RelationType", model.RelationType);

                con.Open();
                int i = com.ExecuteNonQuery();
                con.Close();
                if (i >= 1)
                    return model;
                else
                    return null;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
        public int DeletePersonDetails(int id)
        {
            try
            {
                Connection();
                SqlCommand com = new SqlCommand("DeleteAddressBook", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@id", id);
                con.Open();
                int i = com.ExecuteNonQuery();
                con.Close();
                if (i >= 1)
                {

                    return id;

                }
                else
                {

                    return 0;
                }
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

    }
}
