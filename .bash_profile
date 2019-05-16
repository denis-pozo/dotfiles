# Customize prompt to show only the working directory
export PS1='[\W]\$ '
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export MAVEN_OPTS="-Xmx1024m"

export JAVA_HOME=$(/usr/libexec/java_home)
export MY_SCRIPTS=$HOME/bin
export M2_HOME=/usr/local/Cellar/maven/3.5.0
export RVM_HOME=$HOME/.rvm                        # Add RVM to PATH for scripting
export PATH=$PATH:$JAVA_HOME/bin:$MY_SCRIPTS:$M2_HOME/bin:$RVM_HOME/bin
export MAVEN_OPTS="-Djava.net.preferIPv4Stack=true"

export KARAF_DEBUG=true
export JAVA_DEBUG_OPTS="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=5005"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi



eval "$(rbenv init -)"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
