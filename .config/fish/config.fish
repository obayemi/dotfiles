set -x GOPATH $HOME/dev/go
set -x NODE_PATH "$HOME/.node/lib/node_modules:$NODE_PATH"

# set -x PATH $PATH:/sbin:/usr/sbin
# set -x PATH $HOME/.bin:$HOME/.local/bin:$HOME/.cargo/bin:$PATH
# set -x PATH $HOME/.node/bin:$PATH
# set -x PATH $GOPATH/bin:$PATH
# set -x PATH $HOME/.gem/ruby/2.4.0/bin/:$PATH
set -x PATH $HOME/.nix-profile/bin:$HOME/dev/flutter/bin:$PATH


# eval (python -m virtualfish)

# eval (python -m auto_activation compat_aliases global_requirements)

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
      #exec dbus-launch --sh-syntax --exit-with-session ~/sway
      exec dbus-launch --sh-syntax --exit-with-session sway
      # exec dbus-launch --sh-syntax --exit-with-session weston-launch >/tmp/weston.log 2> /tmp/weston.err
      #echo "aaa"
    end
end

fish_vi_key_bindings
