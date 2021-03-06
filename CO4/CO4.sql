--Create a database named Employee. Create a collection named empDetails. You can use any of the fields Name, Age ,e_mail, phone,salary

use EMP

db.createCollection("empDetails")

db.empDetails.insert({Name:"Mohan",Age:30,Email:"mohan@gmail.com",Salary:5000})
db.empDetails.insert({Name:"Raju",Age:35,Email:"raju@gmail.com",Salary:7000})
db.empDetails.insert({Name:"Bhuvan",Age:25,Email:"bhuvan@gmail.com",Salary:10000})
db.empDetails.insert({Name:"Dilsha",Age:27,Email:"dinu@gmail.com",salary:9000})
db.empDetails.insert({Name:"Harsha",Age:28,Email:"anu@gmail.com",salary:15000})

/*------------------------------------------------------------------------------------------*/

-- A) Find the details of employee whose name is mohan
	db.empDetails.findOne({Name:"Mohan"})

-- B) Fetch the documents of employees whose salary &gt;=5000
	db.empDetails.find({$and:[{salary:{$gte:5000}}]})

-- C) Find the documents of employees whose name starts with letter r
	db.empDetails.find({$or:[{"Name":/^R/}]});

-- D) Find the documents of employees whose name is not in mohan,raju,bhuvan
	db.empDetails.find({"Name":{$not:{$in:["Mohan","Raju","Bhuvan"]}}}).pretty()

-- E) Find the documents of employees whose names are mohan , raju, bhuvan
	db.empDetails.find({"Name":{$in:["Mohan","Raju","Bhuvan"]}}).pretty()

-- F) Retrieve the details of employees whose age is less than 30. Display only the fields name, salary
	db.empDetails.find({Age:{$lt:30}},{Name:1,salary:1})

-- G) Find the details of employees whose salary is grea5000 and age is &lt; 30
	db.empDetails.find({$and:[{salary:{$gt:5000}},{Age:{$lt:30}}]})

-- H) Update the e-mail of employee whose name is mohan // findOneAndUpdate()
	db.empDetails.updateOne({Name:'Mohan'},{$set:{Email:'mohan12345@gmail.com'}})

	db.empDetails.updateOne({Name:'Mohan'},{$set:{Email:'mohan12345@gmail.com'}})

-- I) Delete all the documents of employees whose age>56
	db.empDetails.find({Age:{$gt:56}}
	db.empDetails.deleteMany({Age:{$gt:56}})

