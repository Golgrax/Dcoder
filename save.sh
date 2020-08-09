# Varaible to store details
filename=.md

description="\
## Description
\`\`\`

\`\`\`

"
python=$"## Python
\`\`\`python
"$(cat template.py)$"
\`\`\`

"
java=$"## Java
\`\`\`java
"$(cat template.java)$"
\`\`\`

"
c=$"## C
\`\`\`c
"$(cat template.c)$"
\`\`\`"

# Delete file, if exsit
if [[ -f "$filename" ]]; then
    rm $filename
fi
# Create new file
touch $filename

# Add content to file
echo "$description" >> $filename
echo "$python" >> $filename
echo "$java" >> $filename
echo "$c" >> $filename

# clear template.c file
echo "#include <stdio.h>

void main() {



}" > "template.c"


# clear template.java file
echo "public class template {

	public static void main(String[] args) {



	}

}" > "template.java"


# clear template.py file
echo "" > "template.py"

# Clear save.sh file
git checkout -- save.sh