#!/bin/bash

run() {
    [[ -f $PREFIX_HOME/lib/bash-preexec/bash-preexec.sh ]] && source $PREFIX_HOME/lib/bash-preexec/bash-preexec.sh
    preexec() { $1; exit; };
    export -f preexec
}

export -f run
