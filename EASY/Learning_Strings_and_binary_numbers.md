## Description
```
```
## Python
```python
A,B = input().split()

print(int(B in A))
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {		
		Scanner sc= new Scanner(System.in);

		String[] s = sc.nextLine().split(" ");

		if (s[0].contains(s[1])) {
			System.out.println(1);
		} else {
			System.out.println(0);
		}
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>

void main() {

	char s1[20], s2[20];
	fgets(s1, 20, stdin);
	fgets(s2, 20, stdin);

	int i=0;
	while(i<strlen(s1)-1) {
		int j=0;
		while (j<strlen(s2)-1 && s1[i]==s2[j]) {
			j++;
			i++;
		}
		if (j == strlen(s2)-1) {
			printf("1\n");
			return;
		}
		i++;
	}
	printf("0\n");
}

```