#!/usr/bin/bash
readinputs()
{
	read -p "Enter first number: " num1
	read -p "Enter second number: " num2
}

Addition()
{
	sum=$((num1+num2))
	echo "The addition of $num1 & $num2 is: $sum"
}

Substraction()
{
        sub=$((num1-num2))
        echo "The substraction of $num1 & $num2 is: $sub"
}

readinputs
Addition
Substraction
