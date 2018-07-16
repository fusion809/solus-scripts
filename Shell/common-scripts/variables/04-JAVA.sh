# Java
unset JAVA_HOME
unset JVM_HOME
if [[ -d /usr/lib/jvm ]]; then
    export JVM_HOME=/usr/lib/jvm
    if [[ -d $JVM_HOME/java-8-openjdk ]]; then
         export JAVA_HOME=$JVM_HOME/java-8-openjdk
    elif [[ -d $JVM_HOME/java-9-openjdk ]]; then
         export JAVA_HOME=$JVM_HOME/java-9-openjdk
    elif [[ -d $JVM_HOME/java-9-openjdk ]]; then
         export JAVA_HOME=$JVM_HOME/java-7-openjdk
    fi
fi

