## Description
```
As, all char in string are lowercase,
so to shift back char at an index
fist convert ASCII value to 0 to 25 range
	by subtracting 97 and shift value
		then take modulo 26, this will shift char back in 0 to 25 range...
	Now, to print them back in a-z format add 97;
```


## Python
```python
string = input()
shift = int( input() )

o = ""
for s in string:
	o += chr( (ord(s)-97-shift)%26 + 97 )

print(o)
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		String str = sc.nextLine();
		int shift = sc.nextInt();

		String o = "";
		for ( int i=0; i<str.length(); i++ ) {
			int temp = str.charAt(i)-97-shift;
			temp = (temp<0 ? 26+temp : temp%26) + 97 ;
			o += (char)temp;
		}

		System.out.println(o);
	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

void main() {

	char string[30];
	fgets(string, 30, stdin);
	int shift;
	scanf("%d", &shift);

	for (int i=0; i<strlen(string)-1; i++) {
		int temp = string[i] - 97 - shift;
		temp = (temp<0 ? 26+temp : temp%26) + 97;
		string[i] = (char)temp;
	}

	printf("%s", string);

}
```
