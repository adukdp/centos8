BEGIN {
	print "=============working on file /etc/passwd================="
}
/root/ {print $0}

END {
	print "=============completed working on file /etc/passwd========="
}
