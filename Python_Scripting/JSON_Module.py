import json

employee_data='''
{
"people":[
{
"name":"Aayushi",
"email":["aa@gmail.com", "gg@gmail.com"],
"married":false
},
{
"name":"Anamika",
"email":["aaff@gmail.com","ggff@gmail.com"],
"married":false
}
]}
'''
print(employee_data)

data=json.loads(employee_data)
print(data)
