import requests


def get_data(url):
    status = requests.get(url)
    return status.raw
