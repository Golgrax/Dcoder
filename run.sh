# Check the type of file
if [[ $1 == "c" ]]; then
	# Check if math module is used
	if [[ $2 == "-lm" ]]; then
		gcc "template.c" -lm
	else
		gcc "template.c"
	fi
	# Check if file exist
	if [ -f $"./a.out" ]; then
		./a.out
		rm "./a.out"
	fi
elif [[ $1 == "java" ]]; then
	javac "Dcoder.java"
	# Check if file exist
	if [ -f "Dcoder.class" ]; then
		java "Dcoder"
		rm "Dcoder.class"
		if [ -f "Dcoder\$1.class" ]; then
			rm "Dcoder\$1.class"
		fi
	fi
else
	python3 "template.py"
fi