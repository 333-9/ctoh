#!/usr/bin/awk -f


/^(static )?(void|int|(const )?char|float) ?\**$/ {
	prev = $0;
	next;
}

prev != "" {
	print prev " " $0 ";";
	prev = "";
	next;
}

bln != "" {
	if ($0 ~ bln) {
		print;
		next;
	} else {
		print "";
		bln = "";
	};
}

/^[ \t{}]+.*$/ || /^[ \t]*$/ || /^[a-zA-Z0-9_]*:/ {
	next;
}

/^(typedef )?struct .*\{$/ { # struct
	bln = "^[\t}]";
	print;
	next;
}

/^\/\*$/ { # comment
	print;
	bln = "^[ *][*]"
	next;
}

/^#/ { # preprocessor
	bln = "^#";
	print;
	next;
}


{
	if ($0 ~ /)$/)
		print $0 ";";
	else
		print;
}
