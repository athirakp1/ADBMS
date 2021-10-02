from pprint import pprint
from pymongo import MongoClient

client = MongoClient("mongodb://localhost:27017/")

db=client["Medical_DB"]
my_collection= db["patient_data"]
patient_record = {
    "Name" : "Athira K P",
    "Age" : 23,
    "Sex" : "F",
    "Blood pressure":[{"sys":163},{"dia":73}],
    "Heart rate" : 65
}
my_collection.insert_one(patient_record)
print("DATA")
for item in my_collection.find():
    pprint(item)