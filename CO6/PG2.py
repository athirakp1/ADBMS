from pprint import pprint
from pymongo import MongoClient

client = MongoClient("mongodb://localhost:27017/")

db=client["Medical_DB"]
my_collection= db["patient_data"]
patient_records =[
{
    "Name" : "Athira",
    "Age" : 23,
    "Sex" : "F",
    "Blood pressure":[{"sys":134},{"dia":73}],
    "Heart rate" : 64
},
{
    "Name" : "Kichu",
    "Age" : 22,
    "Sex" : "M",
    "Blood pressure":[{"sys":174},{"dia":42}],
    "Heart rate" : 78
},
 {
    "Name" : "Lalu",
    "Age" : 25,
    "Sex" : "M",
    "Blood pressure":[{"sys":144},{"dia":52}],
    "Heart rate" : 72
 }
]
my_collection.insert_many(patient_records)
print("DATA")
for item in my_collection.find():
    pprint(item)