#!/usr/bin/env python3
"""Wraps the 'flask' command to automatically set FLASK_APP and FLASK_DEBUG environment variable.

Typical usage:

manage.py run

or to initialize the database:
manage.py init_db

Make IDE debugging easier.
"""

from flask.cli import main
import os

if __name__ == '__main__':
    os.environ['FLASK_APP'] = 'flaskr'
    os.environ['FLASK_DEBUG'] = 'true'
    main()
