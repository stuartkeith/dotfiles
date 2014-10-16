export CLICOLOR=1
export EDITOR="vim"
export VISUAL="vim"
export PS1='\[\e[1;30m\]\u\[\e[0;31m\]$(__git_ps1)\[\e[1;30m\] \w\n\$ \[\e[00m\]'

source /usr/local/git/contrib/completion/git-completion.bash
source /usr/local/git/contrib/completion/git-prompt.sh

function prepend_to_path () {
	export PATH=$1:$PATH
}

prepend_to_path "/usr/local/bin"
prepend_to_path "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin"
prepend_to_path "$HOME/bin"

# reload bash profile
alias reload='echo "Reloading $HOME/.bash_profile..." && source $HOME/.bash_profile'

# undo last git commit
alias gitundo='git reset --soft "HEAD^"'

# recursively remove all .DS_Store files
alias removeds='find . -name ".DS_Store" -print0 | xargs -0 rm'

# open current directory as Sublime Text 2 project
alias ss='subl -n .'

# set terminal's title
function title () {
	echo -e "\033];$1\007"
}
