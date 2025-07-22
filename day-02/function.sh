#!/bin/bash

function isloyal() {
   read -p "Kisko mud ke dekha $1 ne: " bandi
   read -p "$1 ka pyaar %: " pyaar

   if [[ $bandi == "daya bhabhi" ]];
   then
	   echo "$1 is loyal"
   elif [[ $pyaar -gt 100 ]];
   then
	  echo "$1 is loyal"
  else
	 echo "$1 is not loyal"
   fi 

}


isloyal "tom"
