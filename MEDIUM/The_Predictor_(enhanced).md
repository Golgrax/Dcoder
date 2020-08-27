## Description
```
Print bad only if consicative 6 1's or 6 0's are found in binary state...
```


## Python
```python
n = int(input())
b = bin(n)[2:]
c = b.count("111111")+b.count("000000")

print("Bad" if c else "good")
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	private static int count(String s) {
		int i = 0;
		while ( i < s.length() ) {
			int j = i;
			while (j<s.length() && s.charAt(j)==s.charAt(i)) { j++; }
			if (j-i == 6) { return 1; }
			i = j;
		}
		return 0;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();
		String bin = Integer.toBinaryString(n);
		int c = count(bin);

		System.out.println( c>0 ? "Bad" : "Good" );

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

int count(int n) {

	char c[30];
	int i = 0;
	int bin = 0;
	while(n) {
		c[i++] = n%2+'0';
		n = n>>1;
	}
	c[i] = '\0';
	printf("%s\n", c);

	i = 0;
	while ( i < strlen(c) ) {
		int j = i;
		while (j<strlen(c) && c[j]==c[i]) { j++; }
		if (j-i == 6) { return 1; }
		i = j;
	}

	return 0;

}

void main() {

	int n;
	scanf("%d", &n);
	int c = count(n);

	printf(c>0 ? "Bad\n" : "Good\n");

}
```
