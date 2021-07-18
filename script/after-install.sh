cd /home/ubuntu/odipweb/oDipUI
python manage.py collectstatic
sudo systemctl restart gunicorn