## Description
```
Iterate through input list,
	if list[i]!= 0 and list[i] is divisible of 6
		then count no. of digits at i,
		then print the no. of '*'
	else print no.
```


## Python
```python
length = int(input())
l = list(map(int, input().split()))

for i in range(length):
	if l[i]!=0 and l[i]%6==0:
		l[i] = "*"*len(str(l[i]))

print(*l)
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	private static String beast(int n) {

		String s = "";
		for ( int i=0; i<String.valueOf(n).length(); i++ ) {
			s += "*";
		}
		return s;

	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int length = sc.nextInt();
		int[] arr = new int[length];
		for (int i=0; i<length; i++) { arr[i] = sc.nextInt(); }

		for (int i=0; i<length; i++) {
			if ( arr[i]!=0 && arr[i]%6==0 ) {
				System.out.print( beast(arr[i])+" " );
			} else {
				System.out.print( arr[i]+" " );
			}
		}

	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

char* beast(int n) {

	int len = 0;
	while (n) { n/=10; len++; }
	
	char *s = (char*)malloc(len*sizeof(char));
	for (int i=0; i<len; i++) { s[i]='*'; }
	s[len] = '\0';

	return s;

}

void main() {

	int length;
	scanf("%d", &length);

	int arr[length];
	for (int i=0; i<length; i++) { scanf("%d", &arr[i]); }

	for (int i=0; i<length; i++) {
		if ( arr[i] && arr[i]%6==0 ) {
			printf("%s ", beast(arr[i]));
		} else {
			printf("%d ", arr[i]);
		}
	}

}
```
