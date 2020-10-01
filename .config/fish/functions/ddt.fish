# Defined in - @ line 1
function ddt --description 'alias ddt=docker-compose exec web pytest --tb=short --cov-report=html --quiet -p no:warnings --nomigrations'
	docker-compose exec web pytest --tb=short --cov-report=html --quiet -p no:warnings --nomigrations $argv;
end
