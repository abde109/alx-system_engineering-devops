#!/usr/bin/python3
"""Module to fetch all hot articles' titles from a subreddit"""

import requests


def recurse(subreddit, hot_list=[], after=""):
    """Recursively fetches all hot articles' titles from a subreddit"""
    url = f"https://www.reddit.com/r/{subreddit}/hot.json?limit=100&after={after}"
    headers = {"User-Agent": "CustomUserAgent/1.0"}
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code != 200:
        return None

    data = response.json().get('data', {})
    after = data.get('after')
    hot_posts = data.get('children', [])

    for post in hot_posts:
        title = post.get('data', {}).get('title')
        if title:
            hot_list.append(title)

    if not after:
        return hot_list

    return recurse(subreddit, hot_list, after)
