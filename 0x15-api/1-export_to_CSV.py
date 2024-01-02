#!/usr/bin/python3
"""
Using what you did in the task #0

"""
import csv
import requests
import sys

if __name__ == "__main__":
    url = "https://jsonplaceholder.typicode.com/"
    _id = sys.argv[1]
    user = requests.get(url + "users/{}".format(_id)).json()
    todo = requests.get(url + "todos", params={"userId": _id}).json()
    username = user.get("username")

    with open("{}.csv".format(_id), "w") as csvfile:
        writer = csv.writer(csvfile, quoting=csv.QUOTE_ALL)
        [writer.writerow([_id, username, t.get("completed"), t.get("title")])
         for t in todo]
