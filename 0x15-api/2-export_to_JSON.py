#!/usr/bin/python3
"""
Module
"""
import json
import requests
import sys


if len(sys.argv) == 2:
    user_id = sys.argv[1]
    # file to store csv info
    file_path = f'{user_id}.json'
    url = f'https://jsonplaceholder.typicode.com/users/{user_id}'
    response_user = requests.get(url)
    url += '/todos'
    response_todo = requests.get(url)

    try:
        json_data = response_user.json()
        username = json_data['username']
        # get user's todo in json format
        json_data = response_todo.json()
    except json.JSONDecodeError:
        print('Not a valid JSON!')

    rows = []
    for data in json_data:
        row = {
                "task": data["title"],
                "completed": data["completed"],
                "username": username
            }
        rows.append(row)

    with open(file_path, mode='w') as file:
        json.dump({user_id: rows}, file)
