#!/usr/bin/env bash

set -e

# Bonus: https://www.imdb.com/user/ur50587721/ratings?sort=your_rating,desc&ratingFilter=0&mode=detail&ref_=undefined&lastPosition=0
function fetch_turkish_arthouse(){
echo 'Once Upon a Time in Anatolia, Nuri Bilge Ceylan, 7.8
Innocence, Zeki Demirkubuz, 8,3
Frenzy, Emin Alper, 7.3
Times and Winds, Reha Erdem, 7.4
Our Grand Despair, Seyfi Teoman, 6.9'
exit 1
}

# print movies whose rating is between 7 and 8
fetch_turkish_arthouse | grep -E '7\.[0-9]' |cut -d',' -f1
