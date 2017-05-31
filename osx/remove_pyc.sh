
clear
this_dir=$(cd -P -- "$(dirname -- "$0")" && pwd -P)
echo $this_dir
cd "$this_dir"
find . -type f -name '*.pyc' -delete
# rm *.pyc
# 
        
