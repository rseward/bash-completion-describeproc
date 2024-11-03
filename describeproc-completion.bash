#/usr/bin/env bash

# https://github.com/iridakos/bash-completion-tutorial

# if the script were accept the subcommands: now tomorrow never

#complete -W "now tomorrow never" dothis

# if the script were to accept a directory
#complete -A directory dothis

_describeproc_completions()
{
    # Show the user procs they own on tab completion!
    COMPREPLY=($(compgen -W "$(ps -u $USER -e -o pid=)" -- "${COMP_WORDS[1]}"))
}

complete -F _describeproc_completions describeproc
