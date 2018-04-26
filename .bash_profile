# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && source "$file"
done
unset file

for file in /usr/local/etc/bash_completion.d/*; do
  [ -r "$file" ] && source "$file"
done
unset file

# Enable tab completion
source ~/.git-completion.bash

source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'

. /usr/local/anaconda3/etc/profile.d/conda.sh
export PGDATA='/usr/local/var/postgres'
