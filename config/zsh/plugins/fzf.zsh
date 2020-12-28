#FZF_DEFAULT_COMMAND="fd -L -H -p -t f -t d -E .cache -E gms -E node_modules . '/home/pacifist'"
#FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
#FZF_COMPLETION_TRIGGER='**'


fzf-file-widget-accept() {
  fzf-file-widget
  zle accept-line
}
#zle     -N  fzf-file-widget-accept
#bindkey '' fzf-file-widget-accept