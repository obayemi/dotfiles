# Defined in /tmp/fish.ZxtpXF/photo_exportable.fish @ line 2
function photo_exportable
	mogrify -resize 2000x2000 -quality 85 -auto-orient $argv
end
