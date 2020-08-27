## Description
```
Split strings at spaces and reverse each word,
	the joint it again befors printing it...
```


## Python
```python
test = int(input())
for t in range(test):
	s = input().split()
	for i in range(len(s)):
		s[i] = s[i][::-1]
	print(" ".join(s)) 
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		sc.nextLine();
		for (int i=0; i<test; i++) {

			String[] s = sc.nextLine().split(" ");

			for (int j=0; j<s.length; j++) {
				StringBuilder sb = new StringBuilder(s[j]);
				System.out.print( sb.reverse()+" " );
			}

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

		int i = 0;
		while (i < strlen(s)) {
			int j = i;
			while (s[j]!=' ' && s[j]!='\n') { j++; }
			for(int k=j-1; k>=i; k--){ printf("%c",s[k]); }
			printf("%c",s[j]);
			i = j+1;
		}

	}

}
```
