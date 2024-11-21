if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -g fish_key_bindings fish_vi_key_bindings

abbr -a docc 'docker compose'
abbr -a ddj 'docc exec web python manage.py'
abbr -a dmsp 'ddj shell_plus'
abbr -a ddsh 'docc exec web'


abbr -a g git
abbr -a l ls -l
abbr -a ll ls -la
abbr -a tree ls --tree


abbr -a mt mender-cli terminal
