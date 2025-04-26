#!/bin/bash

mv data_generation "$1"
mv data_generation.deps.yaml "$1".deps.yaml

# change project name in all files
find . \( -type d -name .git -prune \) -o \( -type f -not -name 'tasks.json' -not -name 'update_from_template.sh'  \) -print0 | xargs -0 sed -i "s/data_generation/$1/g"

# author name
if [ -n "$2" ]; then
    find . \( -type d -name .git -prune \) -o \( -type f -not -name 'tasks.json' -not -name 'update_from_template.sh'  \) -print0 | xargs -0 sed -i "s/miriam/$2/g"
fi

# author email
if [ -n "$3" ]; then
    find . \( -type d -name .git -prune \) -o \( -type f -not -name 'tasks.json' -not -name 'update_from_template.sh'  \) -print0 | xargs -0 sed -i "s/miriamdurazobarba@gmail.com/$3/g"
fi

# github username
if [ -n "$4" ]; then
    find . \( -type d -name .git -prune \) -o \( -type f -not -name 'setup_host.sh' -not -name 'update_from_template.sh'  \) -print0 | xargs -0 sed -i "s/miriampeach/$4/g"
fi
