﻿using System;

namespace Ado.AddressBookService
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to ADO.NET Address Book Service");

            AddressBook_SQLConnection addressbooksql = new AddressBook_SQLConnection();
            AddressBook_Model model = new AddressBook_Model();

            bool flag = true;
            while (flag)
            {
                Console.WriteLine("Select a option to Execute the Program:- \n 1-Adding Contact data \n 2- Contact Deleting  \n 3-Contact Updating \n 4-View data \n 5-Exit");
                int choice = Convert.ToInt32(Console.ReadLine());
                switch (choice)
                {
                    case 1:
                        model.FirstName = "Jighnesh";
                        model.LastName = "Patel";
                        model.Address = "Sardar Patel Nagar";
                        model.City = "Ahemdabad";
                        model.State = "Gujarat";
                        model.Zip = 380004;
                        model.PhoneNo = 7989563423;
                        model.Email = "jighnesh@gmail.com";
                        model.RelationType = "Friend";

                        var result = addressbooksql.AddContact(model);

                        if (result != null)
                            Console.WriteLine("Contact Data Added Successfully");
                        else
                            Console.WriteLine("Enter Data with Respect to Coloumn");
                        break;
                    case 2:
                        flag = false;
                        break;
                }
            }
        }
    }
}