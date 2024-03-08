import requests

# Define the base URL of the Flaskr application
base_url = 'http://localhost:5000'

# Define a function to send a GET request to the home page and check if it returns a 200 OK response
def test_home_page():
    response = requests.get(base_url)
    assert response.status_code == 200
    assert b'Hello, World!' in response.content
