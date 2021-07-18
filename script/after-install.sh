cd /home/ubuntu/odipweb/oDipUI
source env/bin/activate
rm -r static
python manage.py collectstatic
sudo systemctl restart gunicorn