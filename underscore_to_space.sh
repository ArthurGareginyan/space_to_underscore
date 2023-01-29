#!/bin/bash
#=============================================================#
# Name:         Underscore to Space                           #
# Description:  Recursively replace underscores with spaces   #
#               in file and directory names.                  #
# Version:      ver 1.3                                       #
# Released:     1.05.2020                                     #
# Updated:      1.05.2020                                     #
# Author:       Arthur Gareginyan                             #
# Author URI:   https://www.arthurgareginyan.com              #
# Email:        arthurgareginyan@gmail.com                    #
# License:      MIT License                                   #
# License URI:  http://opensource.org/licenses/MIT            #
#=============================================================#

#                  USAGE:
#        chmod +x underscore_to_space.sh
#        cd /home/user/example
#        ~/underscore_to_space.sh

# Check for proper priveliges
[ "`whoami`" = root ] || exec sudo "$0" "$@"


####################### DIALOG ############################
echo -en "\n BEWARE! Starting from current directory (`pwd`),"
echo -en " files and directories with underscores in name will be renamed automatically.\n"
echo -en "\n Press \"ENTER\" to continue or \"N\" to exit:"
read ops
case "$ops" in
    n|N)
        echo -en "\n Canceled by User. Exiting...\n"
        exit 1 ;;
    *)
        echo -en "\n Begining...\n" ;;
esac


################### SETUP VARIABLES #######################
number=0                    # Number of renamed.
number_not=0                # Number of not renamed.
IFS=$'\n'
array=( `find ./ -type d` ) # Find catalogs recursively.


######################## GO ###############################
# Reverse cycle.
for (( i = ${#array[@]}; i; ));
do
    # Go in to catalog.
    pushd "${array[--i]}" >/dev/null 2>&1
    # Search of all files in the current directory.
    for name in *
    do
        # Check for underscores in names of files and directories.
        echo "$name" | grep -q "_"
        if [ $? -eq 0 ]
            then
                # Replacing underscores with spaces.
                newname=`echo $name | sed -e "s/_/ /g"`
                if [ -e $newname ]
                    then
                        let "number_not +=1"
                        echo " Not renaming: $name"
                    else
                        # Plus one to number.
                        let "number += 1"
                        # Message about rename.
                        echo "$number Renaming: $name"
                        # Rename.
                        mv "$name" "$newname"
                fi
        fi
    done
    # Go back.
    popd >/dev/null 2>&1
done

echo -en "\n All operations are completed.\n"

if [ "$number_not" -ne "0" ]
    then
        echo -en "\n $number_not not renamed.\n"
fi

if [ "$number" -eq "0" ]
    then
        echo -en "\n Nothing has been renamed.\n"
elif [ "$number" -eq "1" ]
    then
        echo -en "\n $number renamed.\n"
    else
        echo -en "\n Renamed files and catalogs: $number\n"
fi

exit 0
