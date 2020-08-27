## Description
```
First carefully convert string to seperated integers digits...
Then find min & max...
if min == max, the print only one..
else, print both in sorted order...
```


## Python
```python
a = eval(input())

print(f"[{min(a)},{max(a)}]" if min(a)!=max(a) else f"[{min(a)}]")
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		String[] s = sc.nextLine().split(",");
		int[] arr = new int[s.length];

		for (int i=0; i<arr.length; i++) {
			if ( i == 0 ) {
				arr[i] = Integer.parseInt(s[i].substring(1));
			} else if ( i == arr.length-1 ) {
				arr[i] = Integer.parseInt(s[i].substring(0,s[i].length()-1));
			} else {
				arr[i] = Integer.parseInt(s[i]);
			}
		}

		int x = Integer.MAX_VALUE;
		int y = Integer.MIN_VALUE;
		for (int i=0; i<arr.length; i++) {
			if ( arr[i] < x ) { x = arr[i]; }
			if ( arr[i] > y ) { y = arr[i]; }
		}

		System.out.println("["+( x==y ? x : x+","+y )+"]");

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>
#include <ctype.h>

void main() {

	char s[50];
	fgets(s, 50, stdin);

	int length = 1;
	for (int i=0; i<strlen(s)-1; i++)
		if ( s[i] == ',' )
			length++;

	int arr[length];
	int j = 1;
	for (int i=0; i<length; i++) {
		int t = 0;
		while ( j < strlen(s)-1 && isdigit(s[j]) ) {
			t = t*10 + s[j]-'0';
			j++;
		}
		j++;
		arr[i] = t;
	}

	int x = 2147483647;
	int y = -2147483648;
	for (int i=0; i<length; i++) {
		if ( arr[i] < x ) { x = arr[i]; }
		if ( arr[i] > y ) { y = arr[i]; }
	}

	if ( x==y ) {
		printf("[%d]\n", x);
	} else {
		printf("[%d,%d]\n", x,y);
	}

}
```
