echo "BUILD START"

python3.9 -m ensurepip
python3.9 -m install -r requirements.txt

echo "MAKE MIGRATIONS"

python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

python3.9 manage.py collectstatics --noinput --clear

echo "BUILD END"

git remote add origin https://github.com/victorsmart99998/portfolio2.git
git branch -M main
git push -u origin main
