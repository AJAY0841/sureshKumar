declare -A results
function rollDie()
{
    echo $((1 + RANDOM % 6))
}
while true
do
result=$(rollDie)
results[$result]=$((results[$result]+1))
for key in ${!results[*]}
do
if((results[$key] ==10 ))
then
maxkey=$key
for k in ${!results[*]}
do
if [ ${results[$k]} -gt ${results[$maxkey]}  ]
then
maxkey=$k
fi
done
minkey=$key
for k in ${!results[*]}
do
if  [  ${results[$k]} -lt ${results[$minkey]} ]
then
minkey=$k
fi
done
echo "max = $maxkey ( ${results[$maxkey]} )"
echo "min = $minkey ( ${results[$minkey]}  )"
exit 0
fi
done
done

