## ALIASES
# Sets up aliases. Some are common across all OSes, some are specific.

# Git aliases
alias gl='git log --pretty=oneline --abbrev-commit'
alias gc='git commit'
alias gp='git push'
alias ga='git add'
alias gap='git add -p'
alias gs='git status'
alias gd='git diff'

# Pretty colours on grep
alias grep='grep --color=auto'

# Correct colors on tmux
alias tmux="TERM=screen-256color tmux"

# Copying
if [[ "${machine}" == "Linux" ]]; then
	alias ls='ls --color=auto'

	# Simulate pbcopy/pbpaste behaviour on Linux
	alias pbcopy='xsel --clipboard --input'
	alias pbpaste='xsel --clipboard --output'
elif [[ "${machine}" == "Mac" ]]; then
	alias ls='ls -G'
fi

# Slurm cleanup
alias scleanup="rm slurm-*.out machine.file.*"
