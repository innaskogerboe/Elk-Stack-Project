#Grab all of the data with - $ amount in files that start with 031{wildcard}_win_loss_player_data
#Input all of the data into  file Roulette_Losses. > Will overwrite anything in the file already.

grep - 031*_win_loss_player_data > Roulette_Losses


#awk will filter out *Date* *Time AM/PM* *Loss Amount* and *Players*. This data will be written to Notes_Player_Analysis.txt File
awk -F'[_:]' '{print $1 "|" $6 ":" $7 ":"  $8}' Roulette_Losses > Notes_Player_Analysis.txt

#With Grep we are taking the name Mylie Schmidt, regardless of casing (-i). Everytime that name is found it will be put on a new line (-o).
grep -io "Mylie Schmidt" Roulette_Losses >> Notes_Player_Analysis.txt

#We do a word count for each line and print out how many times that user is showing up (wc -l).
grep -io "Mylie Schmidt" Roulette_Losses | wc -l >> Notes_Player_Analysis.txt
