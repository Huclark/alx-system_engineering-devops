#!/usr/bin/python3
"""
Module
"""
import json
import requests


file_path = 'todo_all_employees.json'
all_employee_dict = {}
for i in range(1, 11):
    url = f'https://jsonplaceholder.typicode.com/users/{i}'

    # file to store csv info
    response_user = requests.get(url)
    url += '/todos'
    response_todo = requests.get(url)

    try:
        json_data = response_user.json()
        username = json_data['username']
        user_id = json_data['id']
        # get user's todo in json format
        json_data = response_todo.json()
    except json.JSONDecodeError:
        print('Not a valid JSON!')

    rows = [{
                "task": data["title"],
                "completed": data["completed"],
                "username": username
            } for data in json_data
            ]
    all_employee_dict[user_id] = rows

# store data in a json file
with open(file_path, mode='w') as file:
    json.dump(all_employee_dict, file)
