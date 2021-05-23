#! /bin/bash

FOLDER="bin"
NAME=${1?Error: No name given to file}
FILE="$FOLDER/$NAME.sh"

if [[ -f $FILE  ]]; then
	vim $FILE
else
	echo '#!/bin/bash' > $FILE
	vim $FILE -c 'execute "normal \o"'
	chmod +x .bin/$NAME.sh
	echo "Script is now executable"
fi
