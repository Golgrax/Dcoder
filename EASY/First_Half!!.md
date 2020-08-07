## Description
```
Take input string,
    and print each char of it,
    until you reach in middle of its length...
```
## Python
```python
string = input()

print(string[:len(string)//2])
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String string = sc.nextLine();
		string = string.substring(0, string.length()/2);

		System.out.println(string);
	}
}
```
## C
```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void main() {

	char *string;
	string = (char *)malloc(100*sizeof(char));
	fgets(string, 100, stdin);

	for (int i=0; i<strlen(string)/2; i++)
		printf( i==strlen(string)/2-1 ? "%c\n" : "%c", string[i] );
}

```