function wd
  set target (wdbin "$argv")

  if test "$status" -eq 0
    builtin cd "$target"
  else
    builtin cd "$argv"
  end
end
