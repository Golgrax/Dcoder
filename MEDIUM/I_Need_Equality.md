## Description
```
First take string,
	Then sort in ascii order,
	After that compare if they are equal or not...
```


## Python
```python
a = sorted(input())
b = sorted(input())

print("Yes" if a==b else "No")
```


## Java
```java
import java.util.Arrays;
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		char[] a = sc.nextLine().toCharArray();
		char[] b = sc.nextLine().toCharArray();


		if ( a.length == b.length ) {
			Arrays.sort(a);
			Arrays.sort(b);
			for (int i=0; i<a.length; i++) {
				if ( a[i] != b[i] ) {
					System.out.println("No");
					System.exit(0);
				}
			}
			System.out.println("Yes");
		} else {
			System.out.println("No");
		}
	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void main() {

	char a[30], b[30];
	fgets(a, 30, stdin);
	fgets(b, 30, stdin);

	if ( strlen(a) == strlen(b) ) {
		int size = strlen(a);
		for (int i=0; i<size; i++) {
			int c = 0;
			for (int j=0; j<size; j++) {
				if(a[i]==b[j]){ c = 1;b[j]='\0';break; }
			}
			if (!c) { printf("No\n"); exit(0); }
		}
		printf("Yes\n");
	} else {
		printf("No\n");
	}

}
```
