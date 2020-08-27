## Description
```
Set, index variable to -1,
	then iterate in super string,
	if sub string is found, reset it to starting index
```


## Python
```python
s = input()
S = input()

print(s.find(S))
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		String superString = sc.nextLine();
		String subString = sc.nextLine();

		System.out.println( superString.indexOf(subString) );

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

void main() {

	char super[20], sub[20];
	fgets(super, 20, stdin);
	fgets(sub, 20, stdin);

	int index = -1;
	int i = 0;
	while (i < strlen(super)) {
		int j = 0;
		while (j<strlen(sub)-1 && super[i]==sub[j]) { j++;i++; }
		if ( sub[j] == '\n' ) { index = i-j; }
		if ( j ) { i--; }
		i++;
	}
	
	printf("%d\n", index);

}
```
