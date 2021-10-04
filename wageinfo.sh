#This shell script alters csv files that contain the following rows: Gender, Years Experience, Years School, Wage
#Usage: bash wageinfo.sh filename

cat wages.csv | tail -n 3294 | cut -d , -f 1,2 | tr "," " " | sort -k1,1 -k2,2n | uniq > uniqgend-yearsExp.txt

