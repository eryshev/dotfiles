# just an example of such function, nothing important should be commited there
function proprietary_config
    set -Ux JAVA_HOME (/usr/libexec/java_home -v 1.8)
    set -Ux PATH $JAVA_HOME/bin $PATH
end