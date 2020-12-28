export ZGEN_DIR="$ZSH_CONFIG/plugins/zgen"

[ -d "$ZGEN_DIR" ] || git clone https://github.com/tarjoilija/zgen "$ZGEN_DIR"
source $ZGEN_DIR/init.zsh
source $ZGEN_DIR/zgen.zsh

if ! zgen saved; then
  echo "Initializing zgen"
  zgen load junegunn/fzf shell
  zgen load Aloxaf/fzf-tab
  zgen load zsh-users/zsh-completions src
  zgen load zsh-users/zsh-history-substring-search
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-autosuggestions
  zgen save
fi