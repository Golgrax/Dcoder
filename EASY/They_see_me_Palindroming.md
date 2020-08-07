## Description
```
Check if,
    string is same as reverse of it....
```
## Python
```python
string = input()

print("Yes" if string==string[::-1] else "No")
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String str = sc.nextLine();
		char[] array = str.toCharArray();

		for (int i=0; i<=str.length()/2; i++) {
			if (array[i]!=array[str.length()-1-i]) {
				System.out.println("No");
				System.exit(0);
			}
		}
		System.out.println("Yes");
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void main() {

	char str[30];
	fgets(str, 30, stdin);

	for (int i=0; i<=strlen(str)/2; i++) {
		if (str[i]!=str[strlen(str)-2-i]) {
			printf("No\n");
			exit(0);
		}
	}
	printf("Yes\n");

}

```