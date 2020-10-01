# Defined in - @ line 1
function djmmm --description 'alias djmmm=dj makemigrations && dj migrate'
	dj makemigrations && dj migrate $argv;
end
