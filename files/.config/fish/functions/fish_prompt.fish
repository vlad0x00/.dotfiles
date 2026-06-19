function fish_prompt
    # user@host: bold green, bold red for root
    set -l uh_color green
    set -l symbol '$'
    if test (id -u) -eq 0
        set uh_color red
        set symbol '#'
    end

    # git: ‹branch›, with a red ● when dirty (untracked counts, like OMZ default)
    set -l git_seg ""
    set -l branch (command git symbolic-ref --short HEAD 2>/dev/null)
    test -z "$branch"; and set branch (command git rev-parse --short HEAD 2>/dev/null)
    if test -n "$branch"
        set -l dirty ""
        if test (count (command git status --porcelain --ignore-submodules 2>/dev/null)) -gt 0
            set dirty (set_color red)●(set_color yellow)
        end
        set git_seg (set_color yellow)"‹$branch$dirty› "(set_color normal)
    end

    echo -s "╭─" \
        (set_color -o $uh_color) "$USER@"(prompt_hostname) (set_color normal) " " \
        (set_color -o blue) (prompt_pwd -d 0) (set_color normal) " " \
        $git_seg
    echo -n -s "╰─" (set_color -o) $symbol (set_color normal) " "
end
