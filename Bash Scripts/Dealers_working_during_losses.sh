
#This is a secondary command which allowed me to get the same data as the above command but in less lines. 
#cat with head command grabs the first line in all my schedule files 0310,0312,0315. This shows the games being played.
#grep -E allows me to pass in all of the Timestamps I would like in one instance.
#The awk command gets the 1,4,5,6 items which equals to the same line items as above since I'm looking for items between _ and : spaces + doing a little extra with adding | and : between my data.
#head allows me to not print the last two lines of my output.  I did this because I got two extra timestamps for 0315 which I did not need.
cat 031*_Dealer_schedule | head -n 1 > Dealers_working_during_losses
grep -E "05:00:00 AM|08:00:00 AM|02:00:00 PM|08:00:00 PM|11:00:00 PM" 031*_Dealer_schedule | awk -F'[_:]' '{print $1 "|" $4 ":" $5 ":" $6}' | head -n -2 >> Dealers_working_during_losses


#Here we are taking the Data we collected in Dealers_working_during_losses and  organizing it into Date/Time and roulette dealer.
#We do a count for the roulette dealer and write it to Notes_Dealer_Analysis.txt
grep -E "05:00:00 AM|08:00:00 AM|02:00:00 PM|08:00:00 PM|11:00:00 PM|Billy Jones" Dealers_working_during_losses | awk '{print $1, $2, $5, $6}' > Notes_Dealer_Analysis.txt
grep -i "Billy Jones" Dealers_working_during_losses | wc -l >> Notes_Dealer_Analysis.txt



