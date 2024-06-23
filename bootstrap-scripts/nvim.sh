#/bin/bash
# check if $DEV_DIRECTORYis set
if [ -z "$DEV_DIRECTORY" ]; then
    echo "DEV_DIRECTORY is not set, please set one"
    exit 1
fi


git clone git@github.com/tsharkey/nvim-conf.git $DEV_DIRECTORY 
