import requests


def get_status(url):
    status = requests.get(url)
    return status.status_code
