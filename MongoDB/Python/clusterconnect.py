from pymongo import MongoClient
from random import randint
from pprint import pprint


client = MongoClient("mongodb+srv://new-user-02:<4vGzVjSFcPvelphq>@spit-02-lyggz.mongodb.net/test?retryWrites=true&w=majority")
db = client.test


pprint('Successfully Connected')