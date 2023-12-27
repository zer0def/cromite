#!/bin/bash

FILE_LIST=~/cromite/tools/under-control/file_list.txt
OUTPUT_DIR=~/cromite/tools/under-control/

cd ~/chromium/src

for current_file in $(cat $FILE_LIST); do

    if [ ! -z "$current_file" ]
    then

        #echo $current_file
        SPLITS=(${current_file//;/ })
        DIR_NAME=${SPLITS[1]}

        if [ ! -z "$DIR_NAME" ]
        then

            echo Copy ${SPLITS[0]} of $DIR_NAME
            #find $DIR_NAME -name ${SPLITS[0]} -exec install -D '{}' $OUTPUT_DIR{} \;

            find $DIR_NAME -name ${SPLITS[0]} \
                -exec grep -q '^CHECKED_VERSION=' $OUTPUT_DIR{} \; \
                -exec sed 's/^CHECKED_VERSION=.*/CHECKED_VERSION=newvalue/' -i $OUTPUT_DIR{} \;

        else

            echo Copy $current_file
            #install -D $current_file $OUTPUT_DIR/$current_file

        fi

    fi

done
