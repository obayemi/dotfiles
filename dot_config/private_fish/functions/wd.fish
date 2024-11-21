function wd
    set target (wdbin complete "$argv")

    if test "$status" -eq 0
        builtin cd "$target"
    end
end
