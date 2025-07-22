#!/bin/bash

<<disclaimer
This is just for infotainment purpose.
disclaimer

read -p "Jetha ne mud ke kisko dekha: " bandi
read -p "Jetha ka pyar %: " pyaar


if [[ $bandi == "daya bhabhi" ]];
then
	echo "Jethalal is loyal!"

elif [[ $pyaar -ge 100 ]];
then
	echo "Jetha is loyal, par thoda chamdi insaan hai"

else
	echo "Jetha is not loyal"
fi

# fi is to close the if block, and then is for executing the if part.
# elif is also here, for else-if ladder part, and for matching the numbers, we use -le(less than or equal), -ge(greater or equal), we have many such operators and I can reas those in the symbols in shell scripting.txt in the desktop
