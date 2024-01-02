#!/usr/bin/python3
"""
using what you did in the task #0,
"""

import json
import requests

if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/"
    users = requests.get(url + "users").json()
    todos = requests.get(url + "todos").json()

    with open("todo_all_employees.json", "w") as fileJson:
        json.dump(
            {
                usr["id"]: [{
                    "task": todo["title"],
                    "completed": todo["completed"],
                    "username": usr["username"]
                } for todo in todos if todo["userId"] == usr["id"]]
                for usr in users
            }, fileJson
        )
