ZSH_THEME="agnoster"
plugins=(git)

########################### ALIASES ###########################
#Ruby aliases
alias be="bundle exec"
alias bi="bundle install"
alias ber="bundle exec rake"
alias berdb="bundle exec rake db:migrate"

#Git aliases
alias gcb="git checkout -b"
alias gcm="git commit -m"
alias gs="git show --stat --oneline origin/master..HEAD"
alias current_branch="git rev-parse --abbrev-ref HEAD | tr -d '[[:space:]]'"

#Program aliases
alias subl.="subl ."

gpo() {
  BRANCH=$(current_branch)
  git push origin $1 $BRANCH
  echo -e "http://github.com/trunkclub/${PWD##*/}/compare/${BRANCH}?expand=1"
}

kgcmu() {
  BRANCH=$(current_branch)
  gcmu
  git branch -D $BRANCH
}

chrome() {
 open -a ‘Google Chrome’ “https://github.com/trunkclub/$(basename “$PWD”)”
}
