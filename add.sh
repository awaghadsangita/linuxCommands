#!/bin/bash -x

read -p "Enter the first Number: " x
read -p "Enter the second Number: " y

z=$(($x + $y))
echo $z
