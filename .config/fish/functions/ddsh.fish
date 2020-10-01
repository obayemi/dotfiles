# Defined in - @ line 1
function ddsh --description 'alias ddsh=docker-compose exec web sh'
	docker-compose exec web sh $argv;
end
