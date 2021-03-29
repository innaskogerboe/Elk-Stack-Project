
cat $1_Dealer_schedule | head -n 1 
cat $1_Dealer_schedule | awk '{print $1, $2, $3, $4, $5, $6, $7, $8}' | grep "$2" | grep "$3" 

