set -g fish_greeting

if status is-interactive
  test -e ~/.cache/wal/sequences && cat ~/.cache/wal/sequences
end
