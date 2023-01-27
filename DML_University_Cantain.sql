Use master
Go
Drop database Canteen_Management_System
Use Canteen_Management_System
Go
--------------Insert all records into tables writing script -------------------
					 ----------Menu_Items values Insert ----------
Insert Into Menu_Items
values(1,'1002','BURGERS', '10 Minutes'),
	  (2,'1003', 'PIZZA', '20 Minutes'),
	  (3,'1004', 'SANDWICHES', '10 Minutes'),
	  (4,'1005', 'SOUPS', '10 Minutes'),
	  (5,'1006', 'NOODLES', '10 Minutes'),
	  (6,'1007', 'PASTA', '15 Minutes'),
	  (7,'1008', 'FRIED RICE', '30 Minutes'),
	  (8,'1009', 'APPETIZERS', '20 Minutes'),
	  (9,'1010', 'CHICKENS', '20 Minutes'),
	  (10,'1011', 'DRINKS', '20 Minutes'),
	  (11,'1012', 'JUICES', '10 Minutes'),
	  (12,'1013', 'COFFEE & TEA', '10 Minutes')
Go

					 ----------Meals_Item Values Insert ----------
Insert Into Meals_Item
Values(1,'Masala Sandwich', 3, 'Breakfast', '150'),
	  (2,'Cheese Sandwich', 3, 'Breakfast', '120'),
	  (3,'Lentil and Mushroom Burger', 1, 'Breakfast', '220'),
	  (4,'Chicken Sandwich', 3,'Breakfast', '80'),
	  (5,'Mushroom Pizza', 2, 'Lunch & Dinner','350'),
	  (6,'BBQ Chicken Pizza', 2, 'Lunch & Dinner','355'),
	  (7,'Chicken Soup',4,'Breakfast & Dinner','160'),
	  (8,'Chicken Soup & Egg',	4,'Breakfast & Dinner','160'),
	  (9,'Egg Noodles', 5,'Breakfast & Dinner','150'),
	  (10,'chicken cheese Burger',	1,'Breakfast','160'),
	  (11,'Sweet Corn Soup', 4,'Breakfast & Dinner','120'),
	  (12,'Smokey BBQ Cheese chicken', 1 ,	'Breakfast','190'),
	  (13,'Veg Noodle Soup', 4, 'Breakfast & Dinner','140'),
	  (14,'Chicken Noodles', 5,'Breakfast & Dinner','180'),
	  (15,'Beef Noodles', 5, 'Breakfast & Dinner','220'),
	  (16,'Pasta BBQ',6, 'Lunch & Dinner', '330'),
	  (17,'Grilled Pizza', 2,'Lunch & Dinner', '55'),
	  (18,'Potato Corn Burger', 1, 'Breakfast','220'),
	  (19,'Tandoori Paneer sandwich', 3,'Breakfast', '180'),
	  (20,'Mushroom Soup',	4,'Breakfast & Dinner',	'130'),
	  (21,'Pasta Basta', 6, 'Lunch & Dinner','335'),
	  (22,'Veg Fried Rice',7,'Lunch & Dinner','400'),
	  (23,'Butter Chicken Twin Burgers', 1,'Breakfast','280'),
	  (24,'Chicken Cheese Blast', 1 ,'Breakfast','280'),
	  (25,'Tender Beef', 2, 'Lunch & Dinner','560'),
	  (26,'Fish Fried Rice', 7, 'Lunch & Dinner','600'),
	  (27,'Egg Roll', 8,'Breakfast','80'),
	  (28,'Egg & veg Fried Rice', 7, 'Lunch & Dinner','400'),
	  (29,'Chicken Fried Rice', 7,	'Lunch & Dinner', '650'),
	  (30,'Onion Rings', 8, 'Breakfast', '150'),
	  (31,'Crispy Fried Chicken', 9, 'Lunch & Dinner','220'),
	  (32,'Pepsi/7-UP', 10,'All Time', '35'),
	  (33,'Hot Wings',	9, 'Lunch & Dinner','20'),
	  (34,'French Fries', 8, 'Breakfast', '100'),
	  (35,'Onions versatile burger', 1,'Breakfast & Dinner', '200'),
	  (36,'Chicken with sausage', 1,'Breakfast & Dinner','200'),
	  (37,'BBQ', 9, 'Lunch & Dinner','200'),
	  (38,'Mountain Dew', 10, 'All Time','40'),
	  (39,'Apple Juice', 1, 'Breakfast & Dinner','70'),
	  (40,'Seafood Pizza',	2, 'Lunch & Dinner','660'),
	  (41,'Crispy Strips',	9, 'Lunch & Dinner','140'),
	  (42,'Orange Juice', 11, 'Breakfast & Dinner','70'),
	  (43,'PineApple Juice', 11, 'Breakfast & Dinner','50'),
	  (44,'Banana Juice', 11, 'Breakfast & Dinner','40'),
	  (45,'Apple & Cucumber Juice', 11, 'Breakfast & Dinner', '90'),
	  (46,'Grapes & Orange', 11, 'Breakfast & Dinner','90'),
	  (47,'Hot Coffee Regular', 12, 'Breakfast & Dinner','120'),
	  (48,'Cold Coffee', 12, 'Breakfast & Dinner', '150'),
	  (49,'Hot Chocolate Coffee', 12, 'Breakfast & Dinner', '180'),
	  (50,'Lemon Tea', 12, 'Breakfast & Dinner', '50'),
	  (51,'Masala Te', 12, 'Breakfast & Dinner', '55'),
	  (52,'Black Tea', 12, 'Breakfast & Dinner', '60'),
	  (53,'Green Tea', 12, 'Breakfast & Dinner', '80'),
	  (54,'Milk Tea', 12,'Breakfast & Dinner', '90'),
	  (55,'Special Tulsi Tea',12,'Breakfast & Dinner','60')
Go
					----------Customer_Info Values Insert ----------
Insert Into Customer_Info
Values(25,'Aysha Akter', 'aysha10@gmail.com', 01782545121,	'112',	2, 5),
	  (26,'Fatima Rahman', 'fatima10@gmail.com', 01782545121,	'113',	5, 14),
	  (27,'Monika Reema', 'monika10@gmail.com', 01782545121,	'120',	4, 8),
	  (28,'Dolly Akte', 'dolly10@gmail.com', 01782545121, '122', 1, 18),
	  (29,'Hafiz Uddin', 'hafiz10@gmail.com', 01782545121, '124', 3, 4),
	  (30,'Anwar Hossai', 'anwar10@gmail.com', 01782545121, '125', 6, 16),
	  (31,'Riaz Hossain', 'iaz10@gmail.com', 01782545121, '128', 7, 29),
	  (32,'Raihana Akter', 'raihana10@gmail.com', 01782545121, '130', 10, 38),
	  (33,'Ojanta Rahman', 'anta10@gmail.com', 01782545121, '135', 11,	46),
	  (34,'Jesmin Akter Alpona', 'jesmin10@gmail.com', 01782545121, '138', 12, 53),
	  (35,'Lima', 'lima10@gmail.com', 01782545121,'139',10,32),
	  (36,'Ripanur Islam','ripanur10@gmail.com', 01782545121, '145',9,31),
	  (37,'Amir Hossain','amir10@gmail.com', 01782545121, '146', 8,27),
	  (38,'Happy Akter','happy10@gmail.com', 01782545121, '147', 1,24),
	  (39,'Tamanna', 'tamanna10@gmail.com', 01782545121, '150', 2, 17),
	  (40,'Rumana', 'rumana10@gmail.com', 01782545121, '156', 5, 15),
	  (41,'Zeneya', 'zeneya10@gmail.com', 01782545121, '157', 3, 1),
	  (42,'Morsheda Mitu','morsheda10@gmail.com',01782545121, '158', 6, 21),
	  (43,'Ishrat Jahan', 'ishrat10@gmail.com', 01782545121, '159',	10,38),
	  (44,'Rubaiya Rim', 'rubaiya10@gmail.com', 01782545121, '162',	12,51),
	  (45,'hemo Shree', 'hemo10@gmail.com', 01782545121, '165', 9, 37)
Go
					----------Order_details Values Insert ----------
Insert into Order_details
Values(20, '10-1-2022  10.00:00', 25, 'Dine In', 2, 'Large'),
	  (25, '11-1-2022  10.10:01', 26, 'Take away', 1, 'Half'),
	  (26, '11-1-2022  12.00:02', 27, 'Take away', 5, 'Half'),
	  (27, '12-1-2022  10.50:03', 28, 'Take away', 1, 'Midium'),
	  (31, '15-1-2022  10.20:04', 29, 'Dine In', 8, 'Large'),
	  (32, '16-1-2022  14.00:05', 30, 'Take away', 7, 'Full'),
	  (35, '19-1-2022  16.00:06', 31, 'Take away', 3, 'Half'),
	  (37, '18-1-2022 20:00:003', 29,  'Dine In', 5, 'small'),
	  (40, '20-1-2022  10.20:08', 33, 'Dine In', 4, 'Glass'),
	  (42, '23-1-2022  12.00:09', 34, 'Dine In', 2, 'Cup'),
	  (45, '26-1-2022  10.50:10', 35, 'Dine In', 4, 'Small'),
	  (48, '27-1-2022  10.00:11', 36, 'Dine In', 1, 'Midium'),
	  (50, '27-1-2022  11.00:12', 37, 'Dine In', 1, 'Midium'),
	  (53, '28-1-2022  18.00:13', 38, 'Dine In', 5, 'Midium'),
	  (56, '29-1-2022  10.00:14', 39, 'Take away', 4, 'Large'),
	  (58, '30-1-2022  19.45:15', 40, 'Dine In', 2, 'Full'),
	  (59, '30-1-2022  10.00:16', 41, 'Take away', 3,'Large'),
	  (60, '30-1-2022  16.00:17', 42, 'Take away', 1,'Half'),
	  (63, '31-1-2022  10.20:18', 43, 'Dine In',4,'small'),
	  (65, '31-1-2022  11.00:19', 44, 'Take away', 2, 'Cup'),
	  (69, '31-1-2022  15.00:20', 45, 'Take away', 3, 'Midium')
Go
						----------Payment_Details Values Insert ----------
Insert into Payment_Details
values(112,	20,	'10-1-2022',  700,	'Cash'),
	  (113,	25,	'11-1-2022',  180,	'Cash'),
	  (120,	26,	'11-1-2022',  800,	'Cash'),
	  (122,	27,	'12-1-2022',  220,	'Cash'),
	  (124,	31,	'15-1-2022',  640,	'Bkash'),
	  (125,	32,	'16-1-2022',  2310,	'Cash'),
	  (128,	35,	'19-1-2022',  1950,	'Cash'),
	  (130,	37,	'18-1-2022',  200,	'Bkash'),
	  (135,	40,	'20-1-2022',  360,	'Bkash'),
	  (138,	42,	'23-1-2022',  160,	'Cash'),
	  (139,	45,	'26-1-2022',  140,	'Cash'),
	  (145,	48,	'27-1-2022',  220,	'Cash'),
	  (146,	50,	'27-1-2022',  80,	'Bkash'),
	  (147,	53,	'28-1-2022',  1400,	'Cash'),
	  (150,	56,	'29-1-2022',  2200,	'Cash'),
	  (156,	58,	'30-1-2022',  440,	'Cash'),
	  (157,	59,	'30-1-2022',  450,	'Cash'),
	  (158,	60,	'30-1-2022',  335,	'Cash'),
	  (159,	63,	'31-1-2022',  160,	'Bkash'),
	  (162,	65,	'31-1-2022',  110,	'Cash'),
	  (165,	69,	'31-1-2022',  600,	'Cash')
Go
					----------Emp_details Values Insert ----------
Insert into Emp_details
values(1, 'Rahman Mia',	'Chef',	'Preparing food','9AM to 3PM', '01654194561'),
	  (2, 'Karim Ahmed','Chef',	'Preparing food','3PM to 9PM', '01457989661'),
	  (3, 'MD Jamal', 'Manager', 'Customer Service Issues',	'9AM to 9AM','01457832561'),
	  (4, 'Nayeem Khan','Waiter','Serving food','9AM to 3PM','01897894561'),
	  (5, 'Nirob Khan',	'Waiter', 'Serving food','9AM to 3PM','01457894561'),
	  (6, 'MD Rohim','Waiter', 'Serving food','3PM to 9PM','01897894561'),
	  (7, 'Robiul Islam','Waiter', 'Serving food','3PM to 9PM','01457832561')
Go
					----------Monthly_Transaction Values Insert ----------
/*Drop table Monthly_Transaction*/
Insert into Monthly_Transaction
Values(20, 25, 2,	5,	112, 3),
	  (25, 26, 5,	14,	113, 3),
	  (26, 27, 4,	8,  120, 5),
	  (27, 28, 1,	18,	122, 6),
	  (31, 29, 3,	4,	124, 3),
	  (32, 30, 6,	16,	125, 7),
	  (35, 31, 7,	29,	128, 7),
	  (37, 32, 10,	38,	130, 5),
	  (40, 33, 11,	46,	135, 6),
	  (42, 34, 12,	53,	138, 5),
	  (45, 35, 10,	32,	139, 3),
	  (48, 36, 9,	31,	145, 3),
	  (50, 37, 8,	27,	146, 4),
	  (53, 38, 1,	24,	147, 6),
	  (56, 39, 2,	17,	150, 7),
	  (58, 40, 5,	15,	156, 5),
	  (59, 41, 3,	1,	157, 6),
	  (60, 42, 6,	21,	158, 4),
	  (63, 43, 10,	38,	159, 3),
	  (65, 44, 12,	51,	162, 5),
	  (69, 45, 9,	37,	165, 3)
Go
--------- Write a Select query for all table of your Project ----------
Select * from Menu_Items;
Select * from Meals_Item;
Select * From Customer_Info;
Select * From Order_details;
Select * From Payment_Details;  
Select * From Emp_details; 
Select * From Monthly_Transaction;
Go
--------- Write a delete query for any one table of your project----------
					--------(Customer table)-----------
Delete from Meals_Item
where Price = 220;
					--------(Payment Details table)-----------
Delete from Payment_Details
where Payment_ID = 138;
Go
----------- Write an update query for any one table of your project -------------------
								--------(Meals Table)-----------
update Meals_Item
set MealItem_Name = 'BBQ Chicken'
Where MealItem_Name = 'BBQ Chicken Pizza';
								 --------(Payment Table)-----------
Update Payment_Details
Set Total_Amount = Total_Amount + 100
where Total_Amount>= 500;
Go	
---------------Q.06. Truncate table for any one table (full record delete) --------------
						--------(Employee Details Table)-----------
Truncate table Emp_details;
Go
---------- Join Query along with Group Query to find out Meals and Order – Wise –Customer List use Having clause in this Query -------
Select me.MealItem_Name, Count(c.Customer_Name) as Customers, o.Order_Date
From Monthly_Transaction as mt
Join Meals_Item me On mt.MealItem_No = me.MealItem_No
Join Customer_Info c On mt.Customer_Id = c.Customer_Id
Join Order_details o On mt.Order_No = o.Order_No
Group by me.MealItem_Name, c.Customer_Name, o.Order_Date
having me.MealItem_Name = 'BBQ';
Go

------------------Write a sub-query to show all the information of Customer Riaz Hossain ------------------
Select c.Customer_Id, c.Customer_Name, count(Customer_Name) as noOfcustomer, o.Order_Date, o.Order_Types, o.Quantity,p.Total_Amount,p.Payment_Type
From Monthly_Transaction mt
Join Customer_Info c On mt.Customer_Id = c.Customer_Id
Join Order_details o On mt.Order_No = o.Order_No
Join Payment_Details p On mt.Payment_ID = p.Payment_ID
Group By c.Customer_Name, o.Order_Types
Having Count(Customer_Name )=(select count(Customer_Id) from Monthly_Transaction
Group by Customer_Id having Customer_Name='Riaz Hossain');
Go

------------- Create a CTE to find out Customer list, Meals Name, Quantity and Total Price which has Monthly Transaction--------------
With CTE_canteenManagement(Customer_Name,MealItem_Name,Quantity,Total_Amount, noOfCustomer)
As(
Select Customer_Name, MealItem_Name,Quantity,Total_Amount,count(Total_Amount)
	From Monthly_Transaction mt
Join Customer_Info c ON mt.Customer_Id = c.Customer_Id
Join Meals_Item me ON mt.MealItem_No = me.MealItem_No
Join Order_details o ON mt.Order_No = o.Order_No
Join Payment_Details p ON mt.Payment_ID = p.Payment_ID
Group by Customer_Name, MealItem_Name,Quantity,Total_Amount)
select * from CTE_canteenManagement;
Go

-------------------- Create a Merge (Update, Existing and Missing) ----------------
				  ------Target_Table MenuCopy, Source_Table MenuItems --------
Drop table Meal_ForMerge
Create table Meal_ForMerge(
	MealItem_No int primary key not null,
	MealItem_Name varchar(50),
	Menu_No int references Menu_Items(Menu_No),
	Availabality varchar(50),
	Price numeric(10,2)
);
Merge Meal_ForMerge as mm
Using Meals_Item as me
On mm.MealItem_No = me.MealItem_No
When matched Then
Update set mm.MealItem_Name = me.MealItem_Name,
		   mm.Menu_No = me.Menu_No,
		   mm.Availabality = me.Availabality,
		   mm.Price = me.Price
When not matched Then
Insert(MealItem_No,MealItem_Name,Menu_No,Availabality,Price)
values(me.MealItem_No, me.MealItem_Name, me.Menu_No, me.Availabality, me.Price)
When not matched by source 
Then Delete;
Select * From Meals_Item
Select * From Meal_ForMerge;
Insert into Meal_ForMerge Values(56, 'Chicken Masala', 10, 'Lunch & Dinner', 150)
Update Meal_ForMerge set Price = 200
Where MealItem_No = 56;
				  ------Target_Table MenuCopy, Source_Table MenuItems --------
Drop table MenuCopy
Create table MenuCopy(
	Menu_No int Primary key not null,
	Menu_Category varchar(30),
	Menu_Name varchar(120),
	Preparing_time varchar(30)
);
Merge MenuCopy as m
Using Menu_Items as mi
ON m.Menu_No = mi.Menu_No
When matched Then
Update set m.Menu_Category = mi.Menu_Category,
		   m.Menu_Name = mi.Menu_Name,
		   m.Preparing_time = mi.Preparing_time
When not matched Then
Insert(Menu_No,Menu_Category,Menu_Name,Preparing_time)
Values(mi.Menu_No,mi.Menu_Category,mi.Menu_Name,mi.Preparing_time)
When not matched by source 
Then Delete;
Select * From Menu_Items
Select * From MenuCopy

Insert into MenuCopy Values(13,'10002','Snack','10 minutes')
Update MenuCopy set Preparing_time = '13 Minutes' 
Where Menu_No = 13;
Go

-------------------------- Create a simple Case --------------------------------
Select me.MealItem_Name, me.Availabality,
Case Availabality
	when 'Breakfast' Then '9:00AM to 12:59pM'
	When 'Lunch & Dinner' Then '1:00PM to 10:30 PM'
	When 'All time' Then '9:00AM to 10:30PM'
	Else '9:00AM to 1:00PM & 6:00PM to 10:30PM'
End as Waiting_time
From Meals_Item me;
---------------------Q.10. Create a Search Case----------------------
Select me.MealItem_Name, me.Availabality,
Case 
	when me.Availabality ='Breakfast' Then '9:00AM to 12:59pM'
	When me.Availabality ='Lunch & Dinner' Then '1:00PM to 10:30 PM'
	When me.Availabality ='All time' Then '9:00AM to 10:30PM'
	Else '9:00AM to 1:00PM & 6:00PM to 10:30PM'
End as Waiting_time
From Meals_Item me;
Go

------------------  Show use of Convert, CAST, IIF, Choose, ISNULL, COALESCE, and RANKING Functions.------------------
						--------------- CAST Function -----------------
Select Payment_Date,Total_Amount,
	CAST(Payment_Date as varchar) As Date,
	CAST(Total_Amount as int) AS Total
From Payment_Details



-------------- Uses the following keywords in your Project: --------------------------
			------------(DISTINCT Keyword Using)------------
Select Distinct MealItem_Name
	from Meals_Item;
Select Distinct MealItem_Name, Availabality	
	From Meals_Item;
Select Distinct Availabality
	From Meals_Item;
Select Distinct Payment_Type
	From Payment_Details;
Select Distinct Order_Types, Size	
	From Order_details;
-------------- Uses the following keywords in your Project: --------------------------
							------------(Using WHERE CLAUSE)--------
Select Menu_Name, Preparing_time
	From Menu_Items
where Preparing_time = '10 Minutes'
Select MealItem_Name, Price, Availabality
	from Meals_Item
where Menu_No = 3
Select Order_No, Total_amount, Payment_Type
	from Payment_Details
Where Total_Amount >= 1000;
-------------- Uses the following keywords in your Project: --------------------------
							------------(TOP Keyword Using)--------
Select Top 10 MealItem_No, MealItem_Name
	From Meals_Item;
Select Top 10 percent MealItem_No, MealItem_Name
	From Meals_Item;
Select Top 5 payment_ID, Payment_Date, Total_Amount, Payment_Type
	From Payment_Details;
Select Top 5 percent Payment_Date, Total_Amount
	From Payment_Details
Order by Total_Amount;
--------------Q.07. Uses the following keywords in your Project: --------------------------
							------------(Using AND Operator)--------
Select Customer_Id, Customer_Name, Phone_No
	From Customer_Info
Where Customer_Id = 30 AND Phone_No = 1782545122;
Select Menu_Category, Menu_Name
	From Menu_Items
Where Menu_No = 5 AND Preparing_time = '10 Minutes';
Select Payment_ID, Total_Amount, Payment_Date, Payment_Type
	From Payment_Details
where Payment_ID = 115 AND Payment_Type = 'Cash';
Select Payment_ID, Total_Amount, Payment_Date, Payment_Type
	From Payment_Details
where Payment_ID = 113 AND Payment_Type = 'Cash';
Select Order_No,Order_Types
	From Order_details
Where Order_No = 25 AND Order_Types = 'Dine In';
--------------Q.07. Uses the following keywords in your Project: --------------------------
							------------(Using OR Operator)--------
Select Order_No, Order_Types, Size
	from Order_details
where Order_No = 25 OR Order_No = 32;
Select Distinct Payment_ID, Payment_Type
	From Payment_Details
where Payment_Type = 'Cash' OR Payment_Type = 'Bkash';
--------------Q.07. Uses the following keywords in your Project: --------------------------
							------------(Using NOT Operator)--------
Select MealItem_Name,Availabality
	From Meals_Item
Where NOT MealItem_No = 2;
Select Customer_Id, Customer_Name
	From Customer_Info
Where Not Customer_Id between 26 AND 30;
Select Customer_Id, Customer_Name
	From Customer_Info
Where NOT (Customer_Id >= 35 OR NOt Phone_No <= '01782545121');
--------------Q.07. Uses the following keywords in your Project: --------------------------
							------------(Using IN Operator)--------
Select Payment_ID,Total_Amount,payment_Date
	From Payment_Details
Where Payment_Date IN ('10-1-2022','15-1-2022');
Select Payment_ID,Total_Amount,Payment_Date
	From Payment_Details
where Payment_Date Not IN ('10-1-2022','15-1-2022');
--------------Q.07. Uses the following keywords in your Project: --------------------------
							------------(Using BETWEEN Operator)--------
Select Emp_ID,Emp_Name,Designation
	From Emp_details
where Emp_ID between 3 AND 6;
Go
--------------Q.07. Uses the following keywords in your Project: --------------------------
							------------(Using Like Operator)--------
Select * From Customer_Info
Where Customer_Name LIKE 'R%';
Select * From Customer_Info
Where Customer_Name Like '%A';
Select * From Customer_Info
Where Customer_Name Like 'r%n';
--------------Q.07. Uses the following keywords in your Project: --------------------------
							------------(Using IS Null Operator)--------
Select * From Meals_Item
Where MealItem_Name Is null;
Select * From Order_details
Where Order_Types Is Not Null;
--------------Q.07. Uses the following keywords in your Project: --------------------------
							------------(Using Order By Clause)------------
Select * From Menu_Items
Order by Menu_Name DESC;
Select * From Order_details
Order by Customer_Id DESC;
Go
----------------------------Q.08. Write an All Join Query-----------------------------
						---------- Inner Join Query -----------
Select m.MealItem_Name, mn.Menu_Name,  m.Price
From Meals_Item as m Inner Join Menu_Items as mn
on m.Menu_No = mn.Menu_No;
Select m.Menu_Name, me.MealItem_Name, c.Customer_Name, o.Order_Date
From Menu_Items as m Inner join Meals_Item as me
On m.Menu_No = me.Menu_No
	Join Customer_Info as c 
On me.MealItem_No = c.MealItem_No
	Join Order_details as o
On c.Customer_Id = o.Customer_Id;
----------------------------Q.08. Write an All Join Query-----------------------------
						---------- Left Join Query -----------
Select me.MealItem_No, me.MealItem_Name, m.Menu_Name
From Meals_Item as me Left Join Menu_Items as m
	On me.Menu_No = m.Menu_No;
Select m.Menu_Name, me.MealItem_No, me.MealItem_Name
From Menu_Items as m Left Join Meals_Item as me
	On m.Menu_No = me.MealItem_No;
----------------------------Q.08. Write an All Join Query-----------------------------
						---------- Right Join Query -----------
Select me.MealItem_No, me.MealItem_Name, m.Menu_Name
From Meals_Item as me Right Join Menu_Items as m
	On me.Menu_No = m.Menu_No;
----------------------------Q.08. Write an All Join Query-----------------------------
						---------- Full Outer Join Query -----------
Select me.MealItem_No, me.MealItem_Name, m.Menu_Name
From Meals_Item as me Full Outer Join Menu_Items as m
	On me.Menu_No = m.Menu_No;
----------------------------Q.08. Write an All Join Query-----------------------------
						---------- Cross Join Query -----------
Select me.MealItem_No, me.MealItem_Name, m.Menu_Name
From Meals_Item as me cross Join Menu_Items as m
--------------------------- Write an All Join Query-----------------------------
						---------- Union Query -----------
select MealItem_No From Meals_Item
	Union
Select MealItem_No From Meals_Item;
Select Menu_No From Menu_Items
		Union 
Select MealItem_No from Meals_Item;
select Menu_Name From Menu_Items
		Union
Select MealItem_Name from Meals_Item;
select Menu_Name From Menu_Items
		Union all
Select MealItem_Name from Meals_Item; 
Go
----------------- Q.09. Uses the following Aggregate function:-----------------
						---------- USING COUNT -------------
Select count(Price) as total From Meals_Item;
Select Count(Menu_No) as Menu_Id From Menu_Items;
						---------- USING AVG -------------
Select AVG(Price) as TotalPrice From Meals_Item;
Select AVG(Total_Amount) as Amount From Payment_Details;
						---------- USING SUM -------------
Select SUM(Price) as TotalPrice From Meals_Item;
Select SUM(Total_Amount) as Amount From Payment_Details;
						---------- USING MAX -------------
Select Max(Price) as MaxPrice From Meals_Item;
Select Max(Total_Amount) as MaxAmount from Payment_Details;
						---------- USING MIN -------------
Select Min(Price) as MinPrice From Meals_Item;
Select Min(Total_Amount) as MinAmount from Payment_Details;
						---------- USING DISTINCT -------------
Select count(Distinct Price) as total From Meals_Item;
Select Count(Distinct Order_Types) as ordertypes From Order_details;
						---------- USING Group By -------------
Select Count(Order_No) as OrderID from Order_details;
Select Count(Order_No) as OrderID from Order_details
Group by Order_No;
Select Count(Payment_Type) as Payment From Payment_Details
Group by Payment_Type;
						---------- USING Group By Having -------------
Select Count (Total_Amount) as Amount From Payment_Details
Group by Total_Amount
Having Total_Amount >=1000;
						---------- USING ROLLUP -------------
Select Count(Total_Amount) as Amount From Payment_Details
Group by RollUp (Total_Amount);
Select Count(Total_Amount) as Amount From Payment_Details
Group by RollUp (Payment_Type);
						---------- USING CUBE -------------
Select Count(Payment_Date) as QPayment 
From Payment_Details
Group by Cube(Payment_Type);
						---------- USING Grouping Set -------------

						---------- USING OVER -------------

Select * from Menu_Items;
Select * from Meals_Item;
Select * From Customer_Info;
Select * From Order_details;
Select * From Payment_Details;  
Select * From Emp_details; 
Select * From Monthly_Transaction;