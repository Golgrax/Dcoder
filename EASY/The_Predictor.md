## Description
```
Take string,
check if 111111 or 000000 is present or not in input..
```
## Python
```python
binary = input()

if "1"*6 in binary or "0" in binary:
	print("Bad")
else:
	print("Good")
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String binary = sc.nextLine();

		if ( binary.contains("111111") || binary.contains("000000") ) {
			System.out.println("Bad");
		} else {
			System.out.println("Good");
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

	if ( strstr(str, "111111")!=NULL || strstr(str, "000000")!=NULL ) {
		printf("Bad\n");
	}
	else {
		printf("Good\n");
	}

}

```