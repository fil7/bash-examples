#!/usr/bin/env bash

# Напишите скрипт на bash, который будет определять в какую возрастную группу попадают пользователи.

while [[ true ]]
do
  echo "enter your name:"
  read name
  if [[ -z $name ]]
  then
    echo "bye"
    break;
  fi

  echo "enter your age:"
  read age
  if [[ $age -eq 0 ]]
  then
    echo "bye"
    break;
  fi

  if [[ $age -le 16 ]]
  then
    group="child"
  elif [[ $age -le 25 ]]
  then
    group="youth"
  else
    group="adult"
  fi

  echo "$name, your group is $group"

done
