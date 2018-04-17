v() {
	if [ $# -eq 0 ]; then
		$VISUAL .
	else
		dir=$(pwd)
		test -d "$1" && \
			{ mkdir -p "$1" && cd "$1" && $VISUAL .; cd "$dir" } || \
			{ mkdir -p "$(dirname "$1")" && cd "$(dirname "$1")" && $VISUAL "$(basename "$1")"; cd "$dir" }
	fi
}

o() {
	if [ $# -eq 0 ]; then
		pcmanfm `pwd`
	else
		test -d "$1" && \
			pcmanfm "$1" || \
			xdg-open "$1"
	fi
}

t(){
	if [ $# -eq 0 ]; then
		todo.sh ls
	else
		todo.sh "$@"
	fi
}

..() {
	test $# -lt 1 && cd .. || \
		for i in $(seq 1 "$1"); do cd ..; done
}

mkcd() { mkdir -p "$1" && cd "$1" }
