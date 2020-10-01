function __success_color -a last_status
    if test "$last_status" -eq 0
        echo -n -s $fish_color_success
    else
        echo -n -s $fish_color_error
    end
end
