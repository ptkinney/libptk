#!/bin/sh -e
/bin/sh -es <<- 'EOF' | shuffle | /bin/sh -esx
	for file in *.c *.h
	do	echo ./pretty '<' ${file} '|' diff - ${file}
	done
EOF
