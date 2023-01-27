Use master
Go
----------------------- Create a 3NF database ----------------------
IF DB_ID('Canteen_Management_System') Is not null
Drop database Canteen_Management_System
Go
Create Database Canteen_Management_System
on Primary
(
	Name = N'Canteen_Management_System_Data_1',
	FileName = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Canteen_Management_System_Data_1.mdf',
	Size = 25mb,
	MaxSize = 100mb,
	FileGrowth = 5%
)
Log On
(
	Name =  N'Canteen_Management_System_1',
	FileName = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Canteen_Management_System_Log_1.ldf',
	Size = 2mb,
	MaxSize = 50mb,
	FileGrowth = 1mb
);
Go
Use Canteen_Management_System
Go
			---------------- Menu_Items table -------------------
Drop Table Menu_Items
Create Table Menu_Items(
	Menu_No int primary key not null,
	Menu_Category varchar(30),
	Menu_Name varchar(120),
	Preparing_time varchar(30)
);
Go
			---------------- Meals_Item table -------------------
Drop table Meals_Item
Create Table Meals_Item(
	MealItem_No int primary key not null,
	MealItem_Name varchar(50),
	Menu_No int references Menu_Items(Menu_No),
	Availabality varchar(50),
	Price numeric(10,2)
);
Go
			---------------- Customer_Info table -------------------
Drop table Customer_Info
Create table Customer_Info(
	Customer_Id int primary key not null,
	Customer_Name varchar(50),
	Email varchar(30) null,
	Phone_No int,
	Payment_ID varchar(20),
	Menu_No int references Menu_Items(Menu_No),
	MealItem_No int references Meals_Item(MealItem_No)
);
Go
			---------------- Order_details table -------------------
Drop table Order_details
Create Table Order_details(
	Order_No int Primary key not null,
	Order_Date varchar(30),
	Customer_Id int references Customer_Info(Customer_Id),
	Order_Types varchar(30),
	Quantity int,
	Size varchar(30)
);
Go
			---------------- Payment_Details table -------------------
drop table Payment_Details
Create Table Payment_Details(
	Payment_ID int Primary key not null,
	Order_No int references Order_details(Order_No),
	Payment_Date varchar(30),
	Total_Amount money,
	Payment_Type varchar(30)
);
Go
			---------------- Emp_details table -------------------
Drop table Emp_details
Create Table Emp_details(
	Emp_ID int Primary key not null,
	Emp_Name varchar(50),
	Designation varchar(50),
	Responsibility varchar(50),
	Working_Hour varchar(50),
	Contact_Number varchar(50)
);
Go
			---------------- Monthly_Transaction table -------------------
drop table Monthly_Transaction
Create table Monthly_Transaction(
	Order_No int references Order_details(Order_No),
	Customer_Id int references Customer_Info(Customer_Id),
	Menu_No int references Menu_Items(Menu_No),
	MealItem_No int references Meals_Item(MealItem_No),
	Payment_ID int references Payment_Details(Payment_ID),
	Emp_ID int references Emp_details(Emp_ID)
);
Go
		------------------- Create a Clustered Index -------------------
Create Clustered index index_CustomerDetails
On Customer_Info(Customer_Id)
Go
		------------------- Create a Non-Clustered Index -------------------
Create NonClustered index index_CustomerInfo
On Customer_Info(Customer_Name)
Go
			-----------------Drop a index -------------------
Drop index Customer_Info.index_CustomerInfo
Go
----------------------Create Default Constraint/ default value insert -----------
Alter table menu_Items
Add Constraint df_MenuItem_MenuNo
default 13 for Menu_No

insert into Menu_Items (Menu_No,Menu_Category, Menu_Name,Preparing_time)
values(13, '1014', 'Sweets', '10 minutes')
----------------------Drop Default Constraint/ default value insert ----------
Alter table Menu_Items
drop constraint df_MenuItem_MenuNo

select * from Menu_Items
select * from Meals_Item
--------------Drop column -----------
Alter table Menu_Items
Drop column Menu_Category;
--------------Add column -----------
Alter table Menu_Items
Add Menu_Category varchar(50);
		-----------------Create A View uses a join ------------------
Drop view viewCustomerReceipt
Create View viewCustomerReceipt
As
(Select c.Customer_Name,c.Phone_No,me.MealItem_Name,o.Order_Date,o.Order_Types,o.Quantity,p.Payment_Type,p.Total_Amount,e.Emp_Name as OrderInfo
From Monthly_Transaction mt
Join Customer_Info c ON mt.Customer_Id = c.Customer_Id
Join Meals_Item me ON mt.MealItem_No = me.MealItem_No
Join Order_details o ON mt.Order_No = o.Order_No
Join Payment_Details p ON mt.Payment_ID = p.Payment_ID
Join Emp_details e ON mt.Customer_Id = e.Emp_ID);

Select * from viewCustomerReceipt;

Create View vCustomerDetails
As
Select c.Customer_Name, c.Email, c.Phone_No, me.MealItem_Name, count(*) as MealName
From Monthly_Transaction mt
Join Customer_Info c ON mt.Customer_Id = c.Customer_Id
Join Meals_Item me ON mt.MealItem_No = c.MealItem_No
where c.Customer_Id between 30 AND 45
Group by c.Customer_Name, c.Email, c.Phone_No, me.MealItem_Name;

Select * From vCustomerDetails
Go
				-----------------Create A View uses the WITH SCHEMABINDING ------------------
Create View CustomerReceipt_WithSchemaninding
With Schemabinding,encryption
As
(Select c.Customer_Name,c.Phone_No,me.MealItem_Name as MealName,o.Order_Date as [Date], o.Order_Types, p.Payment_Type, p.Total_Amount as Total, e.Emp_Name
From dbo.Monthly_Transaction mt
Join dbo.Customer_Info c ON mt.Customer_Id = c.Customer_Id
Join dbo.Meals_Item me ON mt.MealItem_No = me.MealItem_No
Join dbo.Order_details o ON mt.Order_No = o.Order_No
Join dbo.Payment_Details p ON mt.Payment_ID = p.Payment_ID
Join dbo.Emp_details e ON mt.Emp_ID = e.Emp_ID
);

Select * From CustomerReceipt_WithSchemaninding;
Go
		--------------------------- Drop A View Statement -----------------------------------
Drop View viewCustomerReceipt;
Drop View CustomerReceipt_WithSchemaninding;
Drop View vCustomerDetails;
Go
		--------------------------- UPDATE THE VIEW STATEMENT-----------------------------------
Drop View vMealPrice;
Create View vMealPrice
AS
Select MealItem_Name, Price
From Meals_Item
Where Price between 250 AND  450

Update vMealPrice
Set Price = Price + 45

Select * from vMealPrice
Go
		---------------------------- ALTER VIEW STATEMENT ----------------------------
Create View viewPayment
As
Select * From Payment_Details
Where Payment_ID IN (120,124,128,130);

Alter View viewPayment
As 
Select * From Payment_Details
Where Payment_ID IN (120,124,128,130,146,150,156,162);

Select * From viewPayment;
Go
		--------------------------- DALETE THE VIEW STATEMENT-----------------------------------
Drop View viewPayment
Create view viewEmployee
As
select * From Emp_details

Delete from viewEmployee
Where Emp_Name = 'MD Rohim';

Select * From Emp_details;
Go
		--------------------Create Stored Procedure --------------------
Create proc SP_CustomerInfo
As
Select * From Customer_Info
Go
Execute SP_CustomerInfo;

Create Proc SP_CustomerOrderDetails
As
Select Menu_Name,MealItem_Name,Count(Price) as MealPrice, Customer_Name, Order_Date, Quantity, Total_Amount, Payment_Type, Emp_Name
From Monthly_Transaction mt
Join Menu_Items m ON mt.Menu_No = m.Menu_No
Join Meals_Item me ON mt.MealItem_No = me.MealItem_No
Join Customer_Info c ON mt.Customer_Id = c.Customer_Id
Join Order_details o ON mt.Order_No = o.Order_No
Join Payment_Details p ON mt.Payment_ID = p.Payment_ID
Join Emp_details e ON mt.Emp_ID = e.Emp_ID
Where Total_Amount >= 1000
Group by Menu_Name, MealItem_Name, Customer_Name, Order_Date, Quantity, Total_Amount, Payment_Type, Emp_Name

Execute SP_CustomerOrderDetails;
Select * From SP_CustomerOrderDetails;
		--------------------Create Stored Procedure Without parameter--------------------
Create proc SP_WithoutParameters
As 
Select 1
Go
Execute SP_WithoutParameters
		--------------------Insert Stored Procedure --------------------
Create Proc SP_InsertCustomer_03
	@CustomerID int,
	@CustomerName varchar(50),
	@Email varchar(30),
	@Phone_No int
As
Insert into Customer_Info(Customer_Id,Customer_Name,Email,Phone_No)
Values(@CustomerID,@CustomerName,@Email,@Phone_No)
Go
Execute SP_InsertCustomer_03'46', 'Juma', 'juma23@gamil.com', '0175675465';

		--------------------Update Stored Procedure --------------------
Create Proc SP_UpdateCustomer
	@CustomerID int,
	@CustomerName varchar(50),
	@Email varchar(30),
	@Phone_No int
As
Update Customer_Info Set Customer_Name = @CustomerName
Where Customer_Id = @CustomerID
Go

Execute SP_UpdateCustomer '47', 'Rabeya', 'rabeya21@gmail.com', '0125541245';
Select * From SP_UpdateCustomer;

		-------------------- Delete Stored Procedure --------------------
Create Proc SP_DeleteCustomer
	@CustomerID int,
As
Delete From Customer_Info 
Where Customer_Id = @CustomerID
Go

Execute SP_DeleteCustomer  '30';
		-------------------- Search Stored Procedure --------------------
Create Proc tblMealItemsNameandPrice(
	@MealItemNo int,
	@MealItemName varchar(50),
	@Availabality varchar(50),
	@Price money
)
	As
	Begin
	Select * From Meals_Item
	Where MealItem_No = @MealItemNo AND
		 MealItem_Name = @MealItemName
END;
	---------Create Stored Procedure Input parameter, Output Parameter AND Optional Parameter--------
Create proc Sp_With_Parameters
	@outputParam int output,
	@optionalParam date = null,
	@defaultParam varchar(40) = 'N/A'
As
Set @outputParam = 1;
If @optionalParam is null
	begin
	set @optionalParam = GetDate();
	end;

If @defaultParam = 'N/A'
Set @defaultParam ='Monika Rahman'
select @outputParam as [output], @optionalParam as [Optional], @defaultParam as [default]
Return @outputParam;
Go

Declare @output int = 0;
Exec Sp_With_Parameters @output output, '2018-10-23', 'Nodi'
Select @output
Go

		------------------ Drop Stored Procedure ----------------
Drop Proc Sp_With_Parameters
Go
		---------------- Alter Stored Procedure -------------------
Create Proc SP_CustomerDeta
	@CustomerID int
As
Select Customer_Name From Customer_Info
Where Customer_Id = @CustomerID

Alter Proc SP_CustomerDeta
	@CustomerID varchar(50) = Null
As
IF @CustomerID IS Null
	Select Customer_Name From Customer_Info
Else
	Select Customer_Name From Customer_Info
	Where Customer_Id = @CustomerID;
Go
		-------------------- Table Value Function ------------------\
Create Function fn_PaymentTotalAmountSum()
Returns Table
Return
(
	Select Payment_ID, sum(Total_Amount) as Total 
	From Payment_Details
	Group By Payment_ID
	Having sum(Total_Amount) > 1000
);

Select * From dbo.fn_PaymentTotalAmountSum();
Select * From Payment_Details;
	
	    -------------------- Scalar Value Function ------------------
Create Function fn_TotalAmount()
returns money
Begin
Declare @Total money;
Select @Total = Count(*) From Payment_Details;
Return @Total;
End;
 -------
Select dbo.fn_TotalAmount();
Select * From Payment_Details;

		-------------------- Multi-Statement Function ----------------
Create Function fn_PaymentInfo()
	Returns @OutTable table 
		(Payment_ID int,
		Payment_Date varchar(30),
		Total_Amount money,
		Payment_Type varchar(30),
		Price_Extent decimal(18,2)
)
Begin 
Insert into @OutTable(Payment_ID, Payment_Date, Total_Amount, Payment_Type)
Select Payment_ID,Payment_Date, Total_Amount,Payment_Type, Total_Amount = Total_Amount + 20
From Payment_Details;
Return;
End; 

Select * From fn_PaymentInfo();

		------------------------Drop Function --------------------
Drop Function dbo.fn_PaymentTotalAmountSum();
Go
	--------SP for data validation and insert ---------------
Create Proc SP_InsertTable
	@id int = null,
	@name varchar(50) = null
As
if @id is null
begin 
Throw 50001, 'id is required!', 1;
End
else if @name is null
begin 
throw 50001, 'name is required!',1;
end
else if exists(select * from #mytable where id = @id)
begin
throw 50001, 'id already exists', 1;
end
else
begin
insert into #mytable(id,name) 
values(@id, @name)
end
go
		-------------------- After Trigger ------------------------
Create table tableOrderRecord(
	Order_No int,
	OrderApprovalDateTime DateTime,
	OrderStatus varchar(50), 
	UpdateBy varchar(50),
	UpdateOn date
);
Create trigger afterTriggerOrderRecord
On order_details
After Update , insert
AS
Begin
Insert into tableOrderRecord(Order_No,OrderApprovalDateTime, OrderStatus, UpdateBy, UpdateOn)
Select i.Order_No, i.OrderApprovalDateTime, i.OrderStatus, Suser_Name(),getdate()
From Order_details o
Inner join inserted i On o.Order_No = i.Order_No
End
Go
insert into Order_details
values (null, 'Pending'),
	   (null, 'Pending'),
	   (null, 'Pending')

	Select * From Order_details
	Select * From tableOrderRecord

Update Order_details
set OrderStatus = 'Approved', OrderApprovalDateTime = getdate()
where Order_No = 2

Update Order_details
Set OrderStatus = 'Cancelled', OrderApprovalDateTime = getdate()
Where Order_No = 1


drop table Order_details
drop table tableOrderRecord



		--------------------Instead of trigger -------------------
drop table tableOrderAudit
Go
Create table tableOrderAudit(
	AuditID int primary key identity(1,1) not null,
	Order_No int not null,
	Action varchar(23) null
);

Create Trigger insteadof_Ordertrigger
On order_details
Instead of Delete
As
Begin
			Declare @OrderNo int
			Select @OrderNo = deleted.Order_No
			From deleted
	If @OrderNo = 2
	Begin
Raiserror('OrderNo 2 cannot be deleted', 16,1)
	Rollback
	Insert Into tableOrderAudit
Values(@OrderNo,getdate(), 'Record cannot be deleted', suser_name(), getdate())
End
Else
Begin
		delete from order_details 
		Where Order_No = @OrderNo
Insert into
tableOrderAudit
values(@OrderNo,getdate(), 'instead of deleted', suser_name(), getdate())
End
End;
Go
		-----------Showing table ----------
Select * from Menu_Items;
Select * from Meals_Item;
Select * From Customer_Info;
Select * From Order_details;
Select * From Payment_Details;  
Select * From Emp_details; 
Select * From Monthly_Transaction;
