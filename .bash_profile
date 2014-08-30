[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

export TESTING_MAKERS=working


# export PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/sbin:/usr/sbin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

echo "Hello Mario!🌝🌝🌝🌝🌝"

startserver() {
  ruby -run -e httpd . -p$1
}
alias ss=startserver

alias rspec="rspec --color"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias migrate="bin/rake db:migrate && bin/rake db:migrate RAILS_ENV=test"
alias rake="bundle exec rake"
alias push="git push"
alias lg="git lg"
alias showall="ls -a"

source ~/.bash_powerline.sh
source ~/.github_new.sh

alias fly="open $HOME/Downloads/.this"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

### Added by the Heroku Toolbelt
