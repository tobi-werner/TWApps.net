#! /bin/bash
initial_dir=$(pwd)
cd content/press
echo $(pwd)
# iterate through presskit folders
for d in * ; do
    echo "$d"
    FILE=${initial_dir}/static/press/${d}-presskit.zip
    if [[ -f "$FILE" ]]; then
        rm ${FILE};
    fi
    cd ${d}/assets
    zip -r ${FILE} *
    cd ${initial_dir}/content/press
done
