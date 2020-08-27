## Description
```
Iterate through string, 
    by increamenting 2 at each step....
```
## Python
```python
s = input()

for i in range(0, len(s), 2):
	sub = s[i:i+2]
	if sub=="RP" or sub=="PS" or sub=="SR":
		print("You")
	elif sub=="PR" or sub=="SP" or sub=="RS":
		print("Dcoder")
	else:
		print("Draw")
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String s = sc.nextLine();
		
		for (int i=0; i<s.length(); i+=2) {
			char d = s.charAt(i);
			char y = s.charAt(i+1);
			if ( (d=='R' && y=='S') || (d=='S' && y=='P') || (d=='P' && y=='R') ) {
				System.out.println("Dcoder");
			} else if ( (d=='S' && y=='R') || (d=='R' && y=='P') || (d=='P' && y=='S') ) {
				System.out.println("You");
			} else {
				System.out.println("Draw");
			}
		}
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>

void main() {

	char s[30];
	fgets(s, 30, stdin);

	for (int i=0; i<strlen(s)-1; i=i+2) {
		char d = s[i];
		char y = s[i+1];
		if ( (d=='R' && y=='S') || (d=='S' && y=='P') || (d=='P' && y=='R') ) {
			printf("Dcoder\n");
		}
		else if ( (d=='S' && y=='R') || (d=='R' && y=='P') || (d=='P' && y=='S') ) {
			printf("You\n");
		}
		else {
			printf("Draw\n");
		}
	}

}

```