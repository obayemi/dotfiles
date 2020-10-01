# Defined in - @ line 1
function ddj --description 'alias ddj=docker-compose exec web python manage.py'
	docker-compose exec web python manage.py $argv;
end
