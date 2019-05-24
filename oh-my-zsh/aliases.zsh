alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias ger='gp origin HEAD:refs/publish/master'

alias gu='ga -A && gc -am "update" && gp'

alias mvnd="mvn -DdevMode"
alias mvn="mvn -T4"
alias mvni="mvn install -DskipTests"
alias mvnrm="mvn bfs:refresh-moab"
alias mvnrs="mvn bfs:refresh-sources"
alias mvnr="mvnrm && mvnrs && mvni"

alias dl="cd ~/.dotfiles && gl && cd -"

alias sas="ssh-add ~/.ssh/id_rsa"

# alias vi="/usr/local/Cellar/vim/8.1.0202/bin/vim"

zipedit(){
    echo "Usage: zipedit archive.zip folder/file.txt"
    curdir=$(pwd)
    unzip "$1" "$2" -d /tmp 
    cd /tmp
    vi "$2" && zip --update "$curdir/$1"  "$2" 
    # remove this line to just keep overwriting files in /tmp
    rm -f "$2" # or remove -f if you want to confirm
    cd "$curdir"
}

