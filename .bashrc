# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Bash completions from Brew for macOS
for file in /usr/local/etc/bash_completion.d/*; do
  [ -r "$file" ] && source "$file"
done
unset file

# Enable tab completion for git on macOS
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

# Enable tab completion for gcloud on macOS
if [ -f '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc' ]; then
  source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'
fi

# don't put duplicate lines or lines starting with space in the history
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# Conda
for file in /usr/local/*conda3/etc/profile.d/conda.sh; do
  [ -r "$file" ] && source "$file"
done
unset file

# Postgres
export PGDATA='/usr/local/var/postgres'

