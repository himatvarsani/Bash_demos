#!/bin/bash

#MEAL PLAN
meal_plan=(
    "MEAL PLAN 1
    Tofu 150g
    Vegetables 150g"
    "MEAL PLAN 2
    Avocado 50g
    Vegetables 150g
    Tempeh 100g
    White Potato 100g
    Rowse Honey 10g"
    "MEAL PLAN 3
    Almonds 20g
    Strawberries/Raspberries/Blackberries 100g
    Pro V-Gain 40g
    72% Dark Chocolate 20g
    Plant-based Alpro Greek Style Plain Yogurt 100g"
    "MEAL PLAN 4
    Vegetables 150g
    White Potato 200g
    Apetina Paneer Cheese 150g"
)


#WORKOUT
mon_workout=(
    "DB Split Squat - 3 Sets 8-12 Reps 90 Second Rest"
	"Pronated Pulldown - 3 Sets 8-12 Reps 90 Second Rest"
	"Hip Thrust - 3 Sets 8-12 Reps 90 Second Rest"
	"Inline DB Press - 3 Sets 8-12 Reps 90 Second Rest"
	"Leg Extensions - 3 Sets 10-15 Reps 60 Second Rest"
	"Chest Supported Machine Row (Lat) - 3 Sets 10-15 Reps 60 Second Rest"
 )

tue_workout=("No workout today, today is REST DAY")

wed_workout=(
    "RDL - 3 Sets 8-12 Reps 90 Second Rest"
	"DB Chest Press - 3 Sets 8-12 Reps 90 Second Rest"
	"Leg Press - 3 Sets 8-12 Reps 90 Second Rest"
	"Single Arm DB Row (Lats) - 3 Sets 8-12 Reps 90 Second Rest"
	"Lying Hamstring Out - 3 Sets 10-15 Reps 60 Second Rest"
	"Machine Shoulder Press - 3 Sets 10-15 Reps 60 Second Rest"
)

thurs_workout=("No Workout today, today is a 30 minutes CARDIO WORKOUT")

fri_workout=(
    "RDL - 3 Sets 8-12 Reps 90 Second Rest"
	"Neutral Grip Pulldown - 3 Sets 8-12 Reps 90 Second Rest"
	"Hip Thrust - 3 Sets 8-12 Reps 90 Second Rest"
	"Inline DB Press - 3 Sets 8-12 Reps 90 Second Rest"
	"Leg Extensions - 3 Sets 10-15 Reps 60 Second Rest"
	"Chest Supported Machine Row (Lat) - 3 Sets 10-15 Reps 60 Second Rest"
)

sat_workout=("No workout today, today is REST DAY")

sun_workout=("No workout today, today is REST DAY")

# Declaring the System Date - using only the days
today=$(date +"%A")

days=(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)


echo -e "What day you would you like to access your plan?\n
Please enter:\n
1 - View all the plan\n
2 - View today's plan\n
3 - View Monday's Plan\n
4 - View Tuesday's Plan\n
5 - View Wednesday's Plan\n
6 - View Thursday's Plan\n
7 - View Friday's Plan\n
8 - View Saturday's Plan\n
9 - View Sunday's Plan\n"

read viewplan

echo -e "\nGenerating your plan...\n"
    sleep 1
    echo "*...."
    sleep 1
    echo "**..."
    sleep 1
    echo "***.."
    sleep 1
    echo "****."
    sleep 1
    echo -e "*****\n"
    sleep 1
    echo -e "Your plan for today is ready\n"
    sleep 2

# OPTION 1
if [[ $viewplan == "1" ]]; then
    echo -e "\nMONDAY'S FITNESS PLAN\n"

    echo -e "NUTRITION STRATEGY"
    for mealplan in "${meal_plan[@]}"
    do
        echo "$mealplan"
    done
    echo -e "\n"

    echo -e "WORKOUT"
    for workout in "${mon_workout[@]}"
    do
        echo "$workout"
    done
    echo -e "\n10,000 steps"
	echo -e "\n2-3 litres Water\n"
    

    echo -e "\nTUESDAY'S FITNESS PLAN\n"

    echo -e "NUTRITION STRATEGY"
    for mealplan in "${meal_plan[@]}"
    do
        echo "$mealplan"
    done
    echo -e "\n"

    echo -e "WORKOUT"
    for workout in "${tue_workout[@]}"
    do
        echo "$workout"
    done
    echo -e "\n10,000 steps"
	echo -e "\n2-3 litres Water\n"
   

    echo -e "\nWEDNESDAY'S FITNESS PLAN\n"

    echo -e "NUTRITION STRATEGY"
    for mealplan in "${meal_plan[@]}"
    do
        echo "$mealplan"
    done
    echo -e "\n"

    echo -e "WORKOUT"
    for workout in "${wed_workout[@]}"
    do
        echo "$workout"
    done
    echo -e "\n10,000 steps"
	echo -e "\n2-3 litres Water\n"

    echo -e "\nTHURSDAY'S FITNESS PLAN\n"

    echo -e "NUTRITION STRATEGY"
    for mealplan in "${meal_plan[@]}"
    do
        echo "$mealplan"
    done
    echo -e "\n"

    echo -e "WORKOUT"
    for workout in "${thurs_workout[@]}"
    do
        echo "$workout"
    done
    echo -e "\n10,000 steps"
	echo -e "\n2-3 litres Water\n"

    echo -e "\nFRIDAY'S FITNESS PLAN\n"

    echo -e "NUTRITION STRATEGY"
    for mealplan in "${meal_plan[@]}"
    do
        echo "$mealplan"
    done
    echo -e "\n"

    echo -e "WORKOUT"
    for workout in "${fri_workout[@]}"
    do
        echo "$workout"
    done
    echo -e "\n10,000 steps"
	echo -e "\n2-3 litres Water\n"

    echo -e "\nSATURDAY'S FITNESS PLAN\n"

    echo -e "NUTRITION STRATEGY"
    for mealplan in "${meal_plan[@]}"
    do
        echo "$mealplan"
    done
    echo -e "\n"

    echo -e "WORKOUT"
    for workout in "${sat_workout[@]}"
    do
        echo "$workout"
    done
    echo -e "\n10,000 steps"
	echo -e "\n2-3 litres Water\n"

    echo -e "\nSUNDAY'S FITNESS PLAN\n"

    echo -e "NUTRITION STRATEGY"
    for mealplan in "${meal_plan[@]}"
    do
        echo "$mealplan"
    done
    echo -e "\n"

    echo -e "WORKOUT"
    for workout in "${sun_workout[@]}"
    do
        echo "$workout"
    done
    echo -e "\n10,000 steps"
	echo -e "\n2-3 litres Water\n"
    
# OPTION 2
elif [[ $viewplan == "2" ]]; then
    if [[ $today == "${days[0]}" ]]; then
        echo -e "\nMONDAY'S FITNESS PLAN\n"

        echo -e "NUTRITION STRATEGY"
        for mealplan in "${meal_plan[@]}"
        do
            echo "$mealplan"
        done
        echo -e "\n"

        echo -e "WORKOUT"
        for workout in "${mon_workout[@]}"
        do
            echo "$workout"
        done
        echo -e "\n10,000 steps"
        echo -e "\n2-3 litres Water\n"
    fi

    if [[ $today == "${days[1]}" ]]; then
        echo -e "\nTUESDAY'S FITNESS PLAN\n"

        echo -e "NUTRITION STRATEGY"
        for mealplan in "${meal_plan[@]}"
        do
            echo "$mealplan"
        done
        echo -e "\n"

        echo -e "WORKOUT"
        for workout in "${tue_workout[@]}"
        do
            echo "$workout"
        done
        echo -e "\n10,000 steps"
        echo -e "\n2-3 litres Water\n"
    fi

    if [[ $today == "${days[2]}" ]]; then
        echo -e "\nWEDNESDAY'S FITNESS PLAN\n"

        echo -e "NUTRITION STRATEGY"
        for mealplan in "${meal_plan[@]}"
        do
            echo "$mealplan"
        done
        echo -e "\n"
        
        echo -e "WORKOUT"
        for workout in "${wed_workout[@]}"
        do
            echo "$workout"
        done
        echo -e "\n10,000 steps"
        echo -e "\n2-3 litres Water\n"
    fi

    if [[ $today == "${days[3]}" ]]; then
        echo -e "\nTHURSDAY'S FITNESS PLAN\n"

        echo -e "NUTRITION STRATEGY"
        for mealplan in "${meal_plan[@]}"
        do
            echo "$mealplan"
        done
        echo -e "\n"
        
        echo -e "WORKOUT"
        for workout in "${thurs_workout[@]}"
        do
            echo "$workout"
        done
        echo -e "\n10,000 steps"
        echo -e "\n2-3 litres Water\n"
    fi

    if [[ $today == "${days[4]}" ]]; then
         echo -e "\nFRIDAY'S FITNESS PLAN\n"

        echo -e "NUTRITION STRATEGY"
        for mealplan in "${meal_plan[@]}"
        do
            echo "$mealplan"
        done
        echo -e "\n"
        
        echo -e "WORKOUT"
        for workout in "${fri_workout[@]}"
        do
            echo "$workout"
        done
        echo -e "\n10,000 steps"
        echo -e "\n2-3 litres Water\n"
    fi

    if [[ $today == "${days[5]}" ]]; then
        echo -e "\nSATURDAY'S FITNESS PLAN\n"

        echo -e "NUTRITION STRATEGY"
        for mealplan in "${meal_plan[@]}"
        do
            echo "$mealplan"
        done
        echo -e "\n"

        echo -e "WORKOUT"
        for workout in "${sat_workout[@]}"
        do
            echo "$workout"
        done
        echo -e "\n10,000 steps"
        echo -e "\n2-3 litres Water\n"
    fi

       if [[ $today == "${days[6]}" ]]; then
        echo -e "\nSUNDAY'S FITNESS PLAN\n"

        echo -e "NUTRITION STRATEGY"
        for mealplan in "${meal_plan[@]}"
        do
            echo "$mealplan"
        done
        echo -e "\n"

        echo -e "WORKOUT"
        for workout in "${sun_workout[@]}"
        do
            echo "$workout"
        done
        echo -e "\n10,000 steps"
        echo -e "\n2-3 litres Water\n"
    fi

    # OPTION 3
    elif [[ $viewplan == "3" ]]; then
        echo -e "\nMONDAY'S FITNESS PLAN\n"

        echo -e "NUTRITION STRATEGY"
        for mealplan in "${meal_plan[@]}"
        do
            echo "$mealplan"
        done
        echo -e "\n"

        echo -e "WORKOUT"
        for workout in "${mon_workout[@]}"
        do
            echo "$workout"
        done
        echo -e "\n10,000 steps"
        echo -e "\n2-3 litres Water\n"

    # OPTION 4
    elif [[ $viewplan == "4" ]]; then
        echo -e "\nTUESDAY'S FITNESS PLAN\n"

        echo -e "NUTRITION STRATEGY"
        for mealplan in "${meal_plan[@]}"
        do
            echo "$mealplan"
        done
        echo -e "\n"

        echo -e "WORKOUT"
        for workout in "${tue_workout[@]}"
        do
            echo "$workout"
        done
        echo -e "\n10,000 steps"
        echo -e "\n2-3 litres Water\n"
   
    # OPTION 5
    elif [[ $viewplan == "5" ]]; then
        echo -e "\nWEDNESDAY'S FITNESS PLAN\n"

        echo -e "NUTRITION STRATEGY"
        for mealplan in "${meal_plan[@]}"
        do
            echo "$mealplan"
        done
        echo -e "\n"

        echo -e "WORKOUT"
        for workout in "${wed_workout[@]}"
        do
            echo "$workout"
        done
        echo -e "\n10,000 steps"
        echo -e "\n2-3 litres Water\n"

    # OPTION 6
    elif [[ $viewplan == "6" ]]; then
        echo -e "\nTHURSDAY'S FITNESS PLAN\n"

        echo -e "NUTRITION STRATEGY"
        for mealplan in "${meal_plan[@]}"
        do
            echo "$mealplan"
        done
        echo -e "\n"

        echo -e "WORKOUT"
        for workout in "${thurs_workout[@]}"
        do
            echo "$workout"
        done
        echo -e "\n10,000 steps"
        echo -e "\n2-3 litres Water\n"

    # OPTION 7
    elif [[ $viewplan == "7" ]]; then
        echo -e "\nFRIDAY'S FITNESS PLAN\n"

        echo -e "NUTRITION STRATEGY"
        for mealplan in "${meal_plan[@]}"
        do
            echo "$mealplan"
        done
        echo -e "\n"

        echo -e "WORKOUT"
        for workout in "${fri_workout[@]}"
        do
            echo "$workout"
        done
        echo -e "\n10,000 steps"
        echo -e "\n2-3 litres Water\n"

    # OPTION 8
    elif [[ $viewplan == "8" ]]; then
        echo -e "\nSATURDAY'S FITNESS PLAN\n"

        echo -e "NUTRITION STRATEGY"
        for mealplan in "${meal_plan[@]}"
        do
            echo "$mealplan"
        done
        echo -e "\n"

        echo -e "WORKOUT"
        for workout in "${sat_workout[@]}"
        do
            echo "$workout"
        done
        echo -e "\n10,000 steps"
        echo -e "\n2-3 litres Water\n"

     # OPTION 9
    elif [[ $viewplan == "9" ]]; then
        echo -e "\nSUNDAY'S FITNESS PLAN\n"

        echo -e "NUTRITION STRATEGY"
        for mealplan in "${meal_plan[@]}"
        do
            echo "$mealplan"
        done
        echo -e "\n"

        echo -e "WORKOUT"
        for workout in "${sun_workout[@]}"
        do
            echo "$workout"
        done
        echo -e "\n10,000 steps"
        echo -e "\n2-3 litres Water\n"
fi