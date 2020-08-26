## Description
```
Seperate string at odd & even index...
```


## Python
```python
test = int(input())
for t in range(test):
	s = input()
	e, o = "", ""
	for i in range(len(s)):
		if i%2:
			o += s[i]
		else:
			e += s[i]
	print(e, o)
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
			String e="", o="";
			for (int i=0; i<s.length(); i++) {
				if (  i%2 == 0 )
					e += s.charAt(i);
				else
					o += s.charAt(i);
			}
			System.out.println(e+" "+o);

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
	for (int t = 0; t<test; t++) {
		
		char s[30];
		fgets(s, 30, stdin);
		s[strlen(s)-1] = '\0';

		char even[strlen(s)/2], odd[strlen(s)/2];
		int e=0, o=0;

		for (int i=0; i<strlen(s); i++) {
			if (i%2)
				odd[o++] = s[i];
			else
				even[e++] = s[i];
		}
		even[e] = '\0';
		odd[o] = '\0';

		printf("%s %s\n", even, odd);

	}

}
```
