#!/usr/bin/python3
"""Module for counting words in titles of subreddit's hot articles"""

import requests


def count_words(subreddit, word_list, after='', word_count={}):
    if not after:
        word_list = [word.lower() for word in word_list]
        word_count = {word: 0 for word in word_list}

    base_url = "https://www.reddit.com/r/"
    url = f"{base_url}{subreddit}/hot.json?limit=100&after={after}"
    headers = {"User-Agent": "CustomUserAgent/1.0"}
    response = requests.get(url, headers=headers, allow_redirects=False)

    if response.status_code != 200:
        return None

    data = response.json().get('data', {})
    after = data.get('after')
    hot_posts = data.get('children', [])

    for post in hot_posts:
        title = post.get('data', {}).get('title').lower()
        for word in word_list:
            word_count[word] += title.split().count(word)

    if not after:
        sorted_words = sorted(
            [(count, word) for word, count in word_count.items() if count > 0],
            key=lambda x: (-x[0], x[1])
        )
        for count, word in sorted_words:
            print(f"{word}: {count}")
        return

    count_words(subreddit, word_list, after, word_count)
