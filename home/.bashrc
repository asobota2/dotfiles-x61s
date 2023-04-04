# Test for an interactive shell, there is no need
# to set anything if the shell is non-interactive
if [[ $- != *i* ]] ; then
	# Shell is non-interactive
	return
fi

# Check window size and update $LINES and $COLUMNS after each command
shopt -s checkwinsize

# Disable completion when the input buffer is empty
shopt -s no_empty_cmd_completion

# Enable history appending instead of overwriting when exiting
shopt -s histappend

# Enable vi style command line editing
set -o vi
# Disable emacs style command line editing
# (this is redundant as the previous line already sets this)
set +o emacs

# Set the default prompt, in color depending on the user
if ${use_color} ; then
	if [[ ${EUID} == 0 ]] ; then
		export PS1='\[\033[01;31m\]\$\[\033[00m\] '
	else
		export PS1='\[\033[01;34m\]\$\[\033[00m\] '
	fi
else
	# Show default sh prompt when we don't have colors
	export PS1='\$ '
fi

# Set the EDITOR variable
export EDITOR="vim"
# Stop less from storing history in ~/.lesshst
export LESSHISTFILE=-

# Stop ssh from saving hostkeys to ~/.ssh/known_hosts
alias ssh="ssh -o \"UserKnownHostsFile=/dev/null\""
alias scp="scp -o \"UserKnownHostsFile=/dev/null\""

# Modify searching behavior of less
alias less="less --ignore-case --incsearch"

# Verbosity and confirmation (interactive mode)
alias \
	cp="cp --interactive --verbose" \
	mv="mv --interactive --verbose" \
	rm="rm --interactive=once --verbose" \
	mkdir="mkdir --parents --verbose"

# Colors and output formatting
alias \
	ls="ls --almost-all --human-readable --literal --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	df="df --human-readable --print-type" \
	du="du --human-readable" \
	free="free --human --wide"
