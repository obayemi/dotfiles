# Defined in - @ line 1
function dotf --description 'alias dotf git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
	git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $argv;
end
