#!/usr/bin/awk -f
BEGIN {
	print "Reading values a & b from file ab.txt "
}

{
a=$1
b=$2
print "a="a, "b="b
}

END {
	print "Reading Done"
}

