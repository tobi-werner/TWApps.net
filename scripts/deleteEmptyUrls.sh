#! bin/bash

echo $(pwd)
pages=("legal")

cd public
echo $(pwd)
for i in "${pages[@]}"; do
    cd $i
    echo $(pwd)
    rm index.html
    rm index.xml
    cd ..
done