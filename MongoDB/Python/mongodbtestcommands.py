from pymongo import MongoClient
from random import randint
from pprint import pprint


client = MongoClient(port=27017)
db=client.business_02
fivestar = db.reviews.find_one({'rating': 5})
print(fivestar)

print('The number of 5 star reviews:')
fivestarcount = db.reviews.count_documents({'rating': 5})
print(fivestarcount)
print('\nThe sum of each rating occurance across all data grouped by rating ')
stargroup=db.reviews.aggregate(
[
{ '$group':
    { '_id': "$rating",
     "count" : 
                 { '$sum' :1 }
    }
},
{"$sort":  { "_id":1}
}
] )
for group in stargroup:
    print(group)

ASingleReview = db.reviews.find_one({})
print('A sample document:')
pprint(ASingleReview)

result = db.reviews.update_one({'_id' : ASingleReview.get('_id') }, {'$inc': {'likes': 1}})
print('Number of documents modified : ' + str(result.modified_count))

UpdatedDocument = db.reviews.find_one({'_id':ASingleReview.get('_id')})
print('The updated document:')
pprint(UpdatedDocument)

result = db.reviews.delete_many({'cuisine': 'Bar Food'})
pprint(result)