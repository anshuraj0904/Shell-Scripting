#!/bin/bash

create_dir() {
   mkdir demo
}

#Error handling for, the directory is already created and we will face error on running this 2nd time:-
if ! create_dir; then
	echo "The directory is already created!"
	exit 1
fi

echo "This should not work as the code is interrupted!"

