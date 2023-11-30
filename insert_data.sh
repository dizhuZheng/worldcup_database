#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
FILE='games.csv'

{
  read
  while IFS=, read -r a b c d e f 
  do
    "$($PSQL "INSERT INTO teams(name) VALUES ('$c') ")"
    "$($PSQL "INSERT INTO teams(name) VALUES ('$d') ")"
  done
} < $FILE

{
  read
  while IFS=, read -r a b c d e f 
  do
    WINNER="$($PSQL "SELECT team_id FROM teams WHERE name='$c' ")"
    OPPONENT="$($PSQL "SELECT team_id FROM teams WHERE name='$d' ")"
    "$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES ($a, '$b', $WINNER, $OPPONENT, $e, $f) ")"
  done
} < $FILE


