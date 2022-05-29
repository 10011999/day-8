declare -A dictionary=( [1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 )
max_count=10
while(( 1 ))
do
    result=$((1+(RANDOM% 6) ))
    (( dictionary[$result]++))

if(( dictionary[$result] == max_count))
then
   break
fi
done

most_frequent_no=$((1+(RANDOM%6) ))
least_frequent_no=$((1+(RANDOM%6) ))

echo "the no of dice max time and min time:"

for number in ${!dictionary[@]}
do

    if(( dictionary[$number] >= dictionary[$most_frequent_no] ))
    then
        most_frequent_no=$number
    fi

    if(( dictionary[$number] <= dictionary[$least_frequent_no] ))
    then
        least_frequent_no=$number
    fi
  
    echo $number " " ${dictionary[$number]}
done

echo "the no that reached max times $most_frequent_no "
echo "the no that reached min times $least_frequent_no"
