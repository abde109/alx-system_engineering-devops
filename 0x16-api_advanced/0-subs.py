#!/usr/bin/python3
"""Return the number of subscribers for a given subreddit"""
import requests


def number_of_subscribers(subreddit):
    """Return the number of subscribers for a given subreddit"""
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    headers = {
        'User-Agent': 'alx-system_engineering-devops:v1.0 (by /u/abde109)'}
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 200:
        return response.json().get('data').get('subscribers')
    return (0)
