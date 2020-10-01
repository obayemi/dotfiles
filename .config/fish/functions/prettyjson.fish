# Defined in /home/obayemi/.config/fish/config.fish @ line 14
function prettyjson
	python -m json.tool $argv | pygmentize -l javascript;
end
