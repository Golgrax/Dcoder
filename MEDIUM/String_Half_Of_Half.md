## Description
```
first split string into two half, take first half,
	After that,
	print char at only even index in first half...
```


## Python
```python
test = int(input())
for t in range(test):
	s = input()
	o = ""
	for i in range(len(s)//2):
		if i%2==0:
			o += s[i]
	print(o) 
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		sc.nextLine();

		for (int t=0; t<test; t++) {
			
			String s = sc.nextLine();
			String o = "";
			for (int i=0; i<s.length()/2; i+=2) { o += s.charAt(i); }
			System.out.println(o);

		}

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

void main() {

	int test;
	scanf("%d ", &test);

	for (int t=0; t<test; t++) {

		char s[30];
		fgets(s, 30, stdin);

		char o[strlen(s)/4+1];
		int i = 0;
		for(int j=0; j<strlen(s)/2; j+=2) { o[i++] = s[j]; }
		o[i] = '\0';
		printf("%s\n", o);

	}

}
```
