#!/bin/bash

error_exit() {
    echo "$1" >&2
    rm -f $tmp-*
    exit 1
}
tmp=/tmp/$$
#########
# test 1
#########
# answer
echo 9 > $tmp-ans
# execute program
./15745120 45 27 > $tmp-out || error_exit "TEST1-1"
# compare
diff $tmp-ans $tmp-out || error_exit "TEST1-2"

#########
# test 2
#########
# answer
echo 13 > $tmp-ans
# execute program
./15745120 52 39 > $tmp-out || error_exit "TEST2-1"
# compare
diff $tmp-ans $tmp-out || error_exit "TEST2-2"


# success
echo OK
rm -f $tmp-*
exit 0
