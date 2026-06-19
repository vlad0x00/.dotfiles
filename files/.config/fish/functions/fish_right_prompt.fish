function fish_right_prompt
    set -l last $status
    test $last -eq 0; and return
    echo -n -s (set_color -o red) "$last ↵" (set_color normal)
end
