# Load private environment configuration
[ -f $HOME/.bashrc_private ] && source $HOME/.bashrc_private

# Load general shell initialization
if [ -d $HOME/.bashrc.d ]; then
    for file in $HOME/.bashrc.d/*; do
        [ -x "$file" ] && source "$file"
    done
fi
