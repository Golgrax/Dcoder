## Description
```
Iterate through each char in string,
    if char iss present in vowel string 'aeiou'
    Then increse counter by 1...
```
## Python
```python
string = input()

count = 0
for i in string:
	if i in "aeiou":
		count += 1
	
print( count )
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String str = sc.nextLine();
		String vowels = "aeiou";

		int count = 0;
		for (int i=0; i<str.length(); i++) {
			String s = String.valueOf(str.charAt(i));
			if ( vowels.contains( s ) ) {
				count++;
			}
		}

		System.out.println( count );
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>

void main() {

	char str[30];
	fgets(str, 30, stdin);

	int count = 0;
	for (int i=0; i<strlen(str); i++) {
		if ( str[i]=='a' || str[i]=='e' || str[i]=='i' || str[i]=='o' || str[i]=='u') {
			count++;
		}
	}

	printf("%d", count);

}

```