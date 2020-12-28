unsetopt beep notify        # Disable terminal beep
setopt HIST_SAVE_NO_DUPS    # Do not write a duplicate event to the history file.
setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.
setopt AUTO_CD              # Type directory to cd into it
unsetopt ALWAYS_TO_END      # Don't move cursor to end of suggestion after insertion
setopt appendhistory
