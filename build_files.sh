echo "BUILD START"

python3.11 -m ensurepip
python3.11 -m pip install -r requirements.txt

echo "MAKE MIGRATIONS"

python3.11 manage.py makemigrations --noinput
python3.11 manage.py migrate --noinput

python3.11 manage.py collectstatics --noinput --clear

echo "BUILD END"

