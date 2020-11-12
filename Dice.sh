#!/bin/bash

DESIRED="6-6"
((count = 0))
dice="NOT ${DESIRED}"
while [[ "${dice}" != "${DESIRED}" ]] ; do
    ((count = count + 1))
    ((die1 = $RANDOM % 6 + 1))
    ((die2 = $RANDOM % 6 + 1))
    dice="${die1}-${die2}"
    echo ${dice}
done

echo "It took ${count} rolls to get ${DESIRED}"

