## Description
```
Set two counter; Happy & Sad
Find the index of '_'charecter,
	and check if it is sourrounded by '^',
		Then increase Happy counter,
		else increase Sad counter...
```


## Python
```python
s = input()
l = [i for i in range(len(s)) if s[i]=="_"]
H, S = 0, 0
for i in l:
	if s[i-1:i+2]=="^_^":
		H += 1
	else:
		S += 1
    
if H > S:
	print("Cody is happy with Dcoder")
elif S > H:
	print("Cody wants to leave job")
else:
	print("Cody doesn't know what to do")
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		String s = sc.nextLine();
		int H=0, S=0;
		int index = 0;
		int start = 0;

		while ( index != -1 ) {
			
			start = index;
			index = s.indexOf("_", start+1);

			if (index>0 && index<s.length()-1 && s.charAt(index-1)=='^' && s.charAt(index+1)=='^') {
				H++;
			} else if(index != -1) {
				S++;
			}

		}

		if (H > S) {
			System.out.println("Cody is happy with Dcoder");
		} else if (S > H) {
			System.out.println("Cody wants to leave job");
		} else {
			System.out.println("Cody doesn't know what to do");
		}

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

int strindex(char s[], int S, char c) {

	for (int i=S; i<strlen(s); i++)
		if ( s[i] == c )
			return i;
	return -1;

}

void main() {

	char s[30];
	fgets(s, 30, stdin);

	int H=0, S=0;
	int index = 0;
	int start = 0;

	while ( index != -1 ) {
		
		start = index;
		index = strindex(s, start+1, '_');

		if (index>0 && index<strlen(s)-2 && s[index-1]=='^' && s[index+1]=='^') {
			H++;
		} else if(index != -1) {
			S++;
		}

	}
	
	if (H > S) {
		printf("Cody is happy with Dcoder\n");
	} else if (S > H) {
		printf("Cody wants to leave job\n");
	} else {
		printf("Cody doesn't know what to do\n");
	}

}
```
