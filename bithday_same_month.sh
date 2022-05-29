x=50
declare -A birth_day
echo "the birthday month and year individuals: "
for(( a=1; a<=x; a++ ))
do
    (( birth_month = (1+RANDOM%12) ))
    (( birth_year = (92+RANDOM%2) ))
    echo "individual $a $birth_month year $birth_year "
    birth_day[$birth_month]+=" ${a}"
done

for month in ${!birth_day[@]}
do
    echo "the individual birthday in month $month: "
    for a in ${birth_day[$month]}
    do
        echo -n "$a ";
    done
done
