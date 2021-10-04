#This shell script alters csv files that contain the following rows: Gender, Years Experience, Years School, Wage
#Usage: bash wageinfo.sh filename

cat wages.csv | tail -n 3294 | cut -d , -f 1,2 | tr "," " " | sort -k1,1 -k2,2n | uniq > uniqgend-yearsExp.txt

#This section returns the gender, years experience, and wage for the highest earner
highest=$(cat "$1" | cut -d , -f 1,2,4 | tr "," " " | sort -k3rn | head -n 1) 
echo "Highest Paid Earner: "$highest"" 

#This section returns the gender, years experience, and wage for the lowest earner
lowest=$(cat "$1" | cut -d , -f 1,2,4 | tr "," " " | sort -k3rn | tail -n 2 | head -n 1)
echo "Lowest Paid Earner: "$lowest""


