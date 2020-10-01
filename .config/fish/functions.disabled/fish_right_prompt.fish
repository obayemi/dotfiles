function fish_right_prompt --description 'Write out the rprompt'
    set -l last_status "$status"

    set_color (__success_color $last_status)
    echo -n -s '<' (__fish_git_prompt)
end
