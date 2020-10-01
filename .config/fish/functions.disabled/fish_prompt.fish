function fish_prompt --description 'Write out the prompt'
    set -l last_status "$status"

	set -l color_cwd
    set -l suffix
    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix '>'
    end

    if set -q VIRTUAL_ENV
        echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
    end

    if [ "$last_status" -ne 0 ]
        set_color $fish_color_error
        echo -n -s "[$last_status]"
    end

    echo -n -s (set_color normal) "$suffix "
end
