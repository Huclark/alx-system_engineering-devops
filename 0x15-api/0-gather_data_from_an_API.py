#!/usr/bin/python3
"""
Module
"""
import json
import sys
import requests


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

    TASKS = 0
    TITLES = ''
    DONE_TASKS = 0
    for data in json_data:
        if data.get('completed') is True:
            TITLES = TITLES + '\t ' + data['title'] + '\n'
            DONE_TASKS += 1
        TASKS += 1

    print(f"Employee {employee_name} is done with "
          f"tasks({DONE_TASKS}/{TASKS}):\n{TITLES}", end='')
