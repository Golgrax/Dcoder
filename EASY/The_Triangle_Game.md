## Description
```
print triangle of string
```
## Python
```python
string = input()

for i in range(0,len(string)):
	print(string[:i+1])
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String str = sc.nextLine();
		
		for (int i=0; i<str.length(); i++) {
			System.out.println(str.subSequence(0, i+1));
		}
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

	for (int i=1; i<strlen(str); i++) {
		for (int j=0; j<i; j++) {
			printf("%c",str[j]);
		}
		printf("\n");
	}

}

```