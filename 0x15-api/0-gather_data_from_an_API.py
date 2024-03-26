#!/usr/bin/python3
"""
Module
"""
import json
import requests
import sys

if len(sys.argv) == 2:
    url = f'https://jsonplaceholder.typicode.com/users/{sys.argv[1]}'
    response_user = requests.get(url)
    url += '/todos'
    response_todo = requests.get(url)

    try:
        json_data = response_user.json()
        employee_name = json_data['name']
        # get user's todo in json format
        json_data = response_todo.json()
    except json.JSONDecodeError:
        print('Not a valid JSON!')

    tasks = 0
    titles = ''
    done_tasks = 0
    for data in json_data:
        if data.get('completed') is True:
            titles = titles + '\t ' + data['title'] + '\n'
            done_tasks += 1
        tasks += 1

    print(f"Employee {employee_name} is done with "
          f"tasks({done_tasks}/{tasks}):\n{titles}", end='')
