import requests

# Define the base URL of the Flaskr application
base_url = 'http://localhost:5000'

# Define a function to send a GET request to the home page and check if it returns a 200 OK response
def test_home_page():
    response = requests.get(base_url)
    assert response.status_code == 200
    assert b'Hello, World!' in response.content

# Define a function to send a POST request to the login page with invalid credentials and check if it returns a 200 OK response
def test_login_with_invalid_credentials():
    data = {'username': 'invalid_username', 'password': 'invalid_password'}
    response = requests.post(f'{base_url}/login', data=data)
    assert response.status_code == 200
    assert b'Invalid username or password' in response.content


# Run the tests
if __name__ == '__main__':
    #test_home_page()
    test_login_with_invalid_credentials()
    print('All tests passed!')
