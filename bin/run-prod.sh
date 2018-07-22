urlwait &&
./manage.py migrate &&
gunicorn -w 1 --access-logfile=- --timeout=120 fullcircle.wsgi:application --bind 0.0.0.0:$PORT
