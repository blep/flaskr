import requests

# Define the base URL of the Flaskr application
base_url = 'http://localhost:5000'

# Define a function to send a POST request to the login page with invalid credentials and check if it returns a 200 OK response
def test_login_with_invalid_credentials():
    print("Executing login with invalid credentials test")
    data = {'username': 'invalid_username', 'password': 'invalid_password'}
    print("Input data", data)
    response = requests.post(f'{base_url}/login', data=data)
    print("Response: ", response)
    print("Response's StatusCode is: ", response.status_code)
    assert response.status_code == 200

# Run the tests
if __name__ == '__main__':
    test_login_with_invalid_credentials()
    print('Acceptance tests passed!')
