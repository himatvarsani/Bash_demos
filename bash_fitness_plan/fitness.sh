#!/bin/bash

: '
    Multi-line comment
'

# line is a variable name
# READS the entire line in the file
: '
filename="RNT_Fitness_Plan.txt"
# While loop with a read command
while IFS= read -r line
    do
        readLine=$line
        echo "$readLine"
    # give the filename that you would like to read
    done < "$filename"
'

# Have an input that asked the Question if you want to see todays plan or select the day for the plan
# have an if statment to either see todays plan (days_of_the_week) or a read to enter the days they want to see i.e. Wednesday or all plan

echo "Please select how you would like tyou view your plan:
1 - all
2 - today's plan
3 - Type the day of the week (monday, tuesday,...)"

read selection

# Declaring the System Date - using only the days
today=$(date +"%A")
# mon="Monday"

# grep info from a txt file - google it


filename="RNT_Fitness_Plan.txt"

case $selection in
1) 
    sleep 2
    echo ""
    echo "Generating your plan..."
    sleep 1
    echo "*...."
    sleep 1
    echo "**..."
    sleep 1
    echo "***.."
    sleep 1
    echo "****."
    sleep 1
    echo "*****"
    echo ""
    sleep 1
    echo "Your plan is ready"
    sleep 2
    echo ""

    while IFS= read -r line
    do
        echo "$line"
    done < "$filename"
    ;;
2)
    sleep 2
    echo ""
    echo "Today is $today"
    sleep 1
    echo ""
    echo "Generating your plan..."
    sleep 1
    echo "*...."
    sleep 1
    echo "**..."
    sleep 1
    echo "***.."
    sleep 1
    echo "****."
    sleep 1
    echo "*****"
    echo ""
    sleep 1
    echo "Your plan for today is ready"
    sleep 2
    echo ""
    
    if [[ $today == Friday ]]; then
    # While loop with a read command
    while IFS= read -r line
    do
        echo "$line"
    done < "$filename"
        # grep "$today"
        # awk '$1 == "'"Friday"'" {print $2, $3, $4}' $filename
    else
      echo "Today is not $current_date_day"
    fi
    ;;
esac

