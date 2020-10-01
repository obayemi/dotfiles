# Defined in - @ line 1
function mmmm --description 'alias mmmm=./manage.py makemigrations && ./manage.py migrate'
	./manage.py makemigrations && ./manage.py migrate $argv;
end
