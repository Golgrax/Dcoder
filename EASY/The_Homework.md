## Description
```
Take input array sort in decending order and print it...
```
## Python
```python
test = int(input())

for t in range(test):
	length = int(input())
	l = input().split()
	l = sorted( l, reverse=True )
	print( "".join(l) )
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int test = sc.nextInt();
		String[] output = new String[test];

		for (int i=0; i<test; i++) {

			int length = sc.nextInt();
			int[] array = new int[length];
			
			int num = sc.nextInt();
			array[0] = num;
			for (int j=1; j<length; j++) {
				num = sc.nextInt();
				int ptr = j;
				while ( ptr>0 && num>array[ptr-1] ) {
					array[ptr] = array[ptr-1];
					ptr--;
				}
				array[ptr] = num;
			}

			output[i] = "";
			for (int j=0; j<length; j++)
				output[i] += Integer.toString(array[j]);

		}

		for (int i=0; i<test; i++)
			System.out.println(output[i]);
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int test;
	scanf("%d", &test);

	for (int i=0; i<test; i++) {

		int length;
		scanf("%d", &length);

		int array[length];	
		int num;
		scanf("%d", &num);
		array[0] = num;
		for (int j=1; j<length; j++) {
			scanf("%d", &num);
			int ptr = j;
			while ( ptr>0 && num>array[ptr-1] ) {
				array[ptr] = array[ptr-1];
				ptr--;
			}
			array[ptr] = num;
		}
		
		for (int j=0; j<length; j++)
			printf("%d", array[j]);
		printf("\n");

	}

}
```