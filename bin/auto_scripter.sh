#! /bin/bash

FOLDER="bin"
NAME=${1?Error: No name given to file}
FILE="$FOLDER/$NAME"

if [[ -f $FILE  ]]; then
	vim $FILE
else
	echo '#!/bin/bash' > $FILE
	vim $FILE -c 'execute "normal 1o"'
	chmod +x bin/$NAME
	echo "Script is now executable"
fi
