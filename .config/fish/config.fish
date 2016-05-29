if test -d ~/.rbenv
  set PATH $HOME/.rbenv/bin $PATH
  set PATH $HOME/.rbenv/shims $PATH
  rbenv rehash >/dev/null ^&1
  status --is-interactive; and . (rbenv init -|psub)
end

fish_vi_key_bindings

