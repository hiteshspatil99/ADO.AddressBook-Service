USE AddressBookService

Create Procedure AddAddressBookService
(
@FirstName varchar(150),
@LastName varchar(150),
@Address varchar(150),
@City varchar(150),
@State varchar(150),
@Zip Bigint,
@PhoneNo bigint,
@Email varchar(150),
@RelationType varchar(150)
)
as
begin try
Insert into Address_Book values( @FirstName,@LastName,@Address,@City,@State,@Zip,@PhoneNo,@Email,@RelationType)
End TRY
BEGIN CATCH
SELECT
ERROR_NUMBER() AS ERRORNumber,
ERROR_STATE() AS ERRORState,
ERROR_PROCEDURE() AS ERRORProcedure,
ERROR_LINE() AS ERRORLine,
ERROR_MESSAGE() AS ERRORMessage;
END CATCH

Select * From Address_Book;


Create Procedure DeleteAddressBook
(
@id int
)
as 
begin TRY 
delete from Address_Book where id = @id
End TRY
BEGIN CATCH
SELECT
ERROR_NUMBER() AS ERRORNumber,
ERROR_STATE() AS ERRORState,
ERROR_PROCEDURE() AS ERRORProcedure,
ERROR_LINE() AS ERRORLine,
ERROR_MESSAGE() AS ERRORMessage;
END CATCH


Select * From Address_Book;


Create Procedure UpdateAddressBook
(
@id int,
@FirstName varchar(150)
)
as 
begin TRY 
Update Address_Book set FirstName = @FirstName where id = @id
 End TRY
BEGIN CATCH
SELECT
ERROR_NUMBER() AS ERRORNumber,
ERROR_STATE() AS ERRORState,
ERROR_PROCEDURE() AS ERRORProcedure,
ERROR_LINE() AS ERRORLine,
ERROR_MESSAGE() AS ERRORMessage;
END CATCH


Select * From Address_Book;


Create Procedure GetAddressBookTable
(
@id int
)
as 
begin TRY 
select * from Address_Book
End TRY
BEGIN CATCH
SELECT
ERROR_NUMBER() AS ERRORNumber,
ERROR_STATE() AS ERRORState,
ERROR_PROCEDURE() AS ERRORProcedure,
ERROR_LINE() AS ERRORLine,
ERROR_MESSAGE() AS ERRORMessage;
END CATCH

