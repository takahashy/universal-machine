#! /bin/sh

rm theum.out ourum.out

COUNTER=1

for FILE in *.um
do
    echo "$COUNTER. test for $FILE:"
    um $FILE > theum.out
    ./um $FILE > ourum.out
    diff theum.out ourum.out

    COUNTER=$(($COUNTER+1))
done

    rm theum.out ourum.out