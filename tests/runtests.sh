#!/bin/bash

runLib(){
	for ((i=1;i<=$1; i++)); do 
		echo "Round" $i "...."
		for f in $( ls Round$i/*.hs ); do
			echo $f
			start_time=`date +%s`
			gradual $f > tmp.log 2>&1
			retVal=$?
			if [ $retVal -ne 0 ]; then
			tail -1 tmp.log | tr '\n' ' |\t' | tr '&' '|'
			echo "|\t N/A"
			else 
			end_time=`date +%s`
			t=`expr $end_time - $start_time`
			tail -1 tmp.log | tr '\n' ' |\t' | tr '&' '|'
			echo "|\t"$t"s"
			fi
		done 
		rm tmp.log
	done	
}


echo GHC.List 
cd GHCList
runLib 2
cd ..
echo "\n"

echo Data.List 
cd DataList
runLib 1
cd ..
echo "\n"


echo Data.List.NonEmpty 
cd DataListNonEmpty
runLib 3
cd ..
echo "\n"