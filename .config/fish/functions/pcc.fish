# Defined in - @ line 1
function pcc --description 'alias pcc docc -f docker-compose-prod.yml'
	docc -f docker-compose-prod.yml $argv;
end
