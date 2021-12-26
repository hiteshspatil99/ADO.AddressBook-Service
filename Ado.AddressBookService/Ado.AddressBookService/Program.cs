using System;

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
                Console.WriteLine("Select a option to Execute the Program:- \n 1-Adding Contact data \n 2- Contact Deleting  \n 3-Contact data Updating \n 4-View data \n 5-Exit");
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
                        

                        Console.WriteLine("Enter the id To Delete Data");
                        int num = Convert.ToInt32(Console.ReadLine());
                        addressbooksql.DeletePersonDetails(num);
                        Console.WriteLine("Id Data Deleted Succesfully");
                        break;
                        break;

                    case 3:
                        Console.WriteLine("Enter id of Person Whose Data you Want to Update");
                        int Personid = Convert.ToInt32(Console.ReadLine());
                        Console.WriteLine("Enter New Name");
                        string NewName = Console.ReadLine();
                        bool res = addressbooksql.UpdateAddressBookDetail(Personid, NewName);
                        if (res != null)
                        {
                            Console.WriteLine("Data Upadted Successfully");
                        }
                        else
                        {
                            Console.WriteLine("Data Not updated");
                        }
                        break;

                    case 4:
                        addressbooksql.GetAllContact();
                        break;

                    case 5:
                        flag = false;
                        break;
                }
            }
        }
    }
}
