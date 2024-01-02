#!/usr/bin/python3
"""
Using what you did in the task #0,
"""
import json
import requests
import sys

if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/"
    _id = sys.argv[1]
    user = requests.get(url + "users/{}".format(_id)).json()
    todo = requests.get(url + "todos", params={"userId": _id}).json()
    username = user.get("username")

    with open("{}.json".format(_id), "w") as fileJson:
        json.dump({_id: [{"task": t.get("title"),
                          "completed": t.get("completed"),
                          "username": username} for t in todo]}, fileJson)
