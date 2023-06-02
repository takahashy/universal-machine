#! /bin/sh

/usr/bin/time ./um midmark.um > /dev/null
/usr/bin/time ./um sandmark.umz > /dev/null
/usr/bin/time ./um advent.umz < advent.in > /dev/null
