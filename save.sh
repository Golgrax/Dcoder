# Varaible to store details
folder=""
name=""
filename="./$folder/$name.md"

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
"$(cat Dcoder.java)$"
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
echo "import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

	}

}" > "Dcoder.java"


# clear template.py file
echo "" > "template.py"


# Clear save.sh file
git checkout -- save.sh

#Commit & push
git add .
git commit -m "$folder - $name"
git push