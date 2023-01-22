function ll --wraps=ls --wraps='ls -lA' --wraps='ls -la' --description 'alias ll ls -la'
  ls -la $argv; 
end
