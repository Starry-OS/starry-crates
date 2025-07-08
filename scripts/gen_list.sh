#!/bin/bash

ROOT=https://github.com/Starry-Mix-THU
DOC_ROOT=https://Starry-Mix-THU.github.io

CRATES=(
    "axprocess"
    "axsignal"
    "weak-map"
    "extern-trait"
    "axfs-ng-vfs"
    "axptr"
)


echo '| Crate | &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[crates.io](crates.io)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | Documentation | Description |'
echo '|----|:--:|:--:|----|'

for c in ${CRATES[@]};
do
    url="$ROOT/$c"
    toml="crates/$c/Cargo.toml"
    description=`cat $toml | sed -n 's/^description = "\([^"]*\)"/\1/p'`
    if [[ $description != *. ]]; then
        description+="."
    fi

    if [[ `curl -s https://crates.io/api/v1/crates/$c | grep arceos-org` ]]
    then
        # In crates.io
        crates_io="[![Crates.io](https://img.shields.io/crates/v/$c)](https://crates.io/crates/$c)"
        doc="[![Docs.rs](https://docs.rs/$c/badge.svg)](https://docs.rs/$c)"
    else
        # Not in crates.io
        crates_io="N/A"
        
        doc_url="$DOC_ROOT/$c"
        
        doc="[![Docs.rs](https://img.shields.io/badge/docs-pages-green)]($doc_url)"
    fi
    echo "| [$c]($url) | $crates_io | $doc | $description |"
done
