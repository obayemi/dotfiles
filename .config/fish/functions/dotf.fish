function dotf --wraps='git git --git-dir=$HOME/.dotf --work-tree=$HOME/' --wraps='git --git-dir=$HOME/.dotf --work-tree=$HOME/' --description 'alias dotf git --git-dir=$HOME/.dotf --work-tree=$HOME/'
  git --git-dir=$HOME/.dotf --work-tree=$HOME/ $argv
        
end
