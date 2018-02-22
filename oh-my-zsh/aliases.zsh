alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias ger='gp origin HEAD:refs/publish/master'

alias dp='ga -A && gc -am "update" && gp'

alias mvn="mvn -T4"
alias mvni="mvn install -DskipTests"
alias mvnrm="mvn bfs:refresh-moab"
alias mvnrs="mvn bfs:refresh-sources"
alias mvnr="mvnrm && mvnrs && mvni"

alias dl="cd ~/.dotfiles && gl && cd -"