#!/bin/bash

cmd=$1

if [ -z $cmd ]; then
    echo "Usage: $0 <init|pull>"
    exit 1
fi

ROOT=https://github.com/Starry-Mix-THU

REPOS=(
    "axprocess"
    "axsignal"
    "weak-map"
    "extern-trait"
    "axfs-ng-vfs"
    "axptr"
)

mkdir -p crates

for repo in ${REPOS[@]};
do
    if [ $cmd == "init" ]; then
        git submodule add $ROOT/$repo.git crates/$repo
    elif [ $cmd == "pull" ]; then
        pushd crates/$repo > /dev/null
        git pull origin main
        popd > /dev/null
    else
        echo "Invalid command: $cmd"
        exit 1
    fi
done
