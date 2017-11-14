# Flask  Official Tutorial

Flaskr, from the official tutorial of Flask documentation.
 
Unlike the example found in Flask sources, it does not
make use of Blueprint that are not introduced in the tutorial).

http://flask.pocoo.org/docs/0.12/tutorial/folders/#tutorial-folders

Like the tutorial, user name is `admin` and password is `default`.

# Running the server

## Development mode

### The flask tutorial way (not IDE friendly)

Creates and activate your virtual environment, then:

```text
env\Scripts\activate.bat
pip install --editable .

set FLASK_APP=flaskr
set FLASK_DEBUG=true
flask initdb
flask run
```

### IDE friendly way

Runs the `manage.py` script from your IDE as if it was the flask command above.

This script invokes the flask command after setting the environment variable.

So, for example in PyCharm, set:
- `Script` to the full path of `manage.py`
- `Script parameters` to `run` (or `initdb` to initialize the database)



## Production mode

See http://flask.pocoo.org/docs/0.12/deploying/#deployment
