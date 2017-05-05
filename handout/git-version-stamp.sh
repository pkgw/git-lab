#! /bin/bash

vfile="$1"

if [ -e $vfile.forced ] ; then
    vers=$(cat $vfile.forced)
else
    if ! git update-index -q --refresh ; then
        echo >&2 "unable to determine version from Git repository status"
        exit 1
    fi

    if vers=$(git describe --match "v[0-9]*" --abbrev=7 HEAD 2>/dev/null) ; then
        vers=$(expr "$vers" : v*'\(.*\)')
    else
        vers=$(git show-ref -h --hash=7 |head -n1) || exit $?
    fi

    [ -z "$(git diff-index --name-only HEAD --)" ] || vers="$vers-dirty"

    vers="\\newcommand\\gitversion{$vers}"
fi

if [ -r $vfile ] ; then
    curvers=$(cat $vfile)
else
    curvers=unset
fi

test "$vers" = "$curvers" || {
    echo "$vers" >$vfile
}
