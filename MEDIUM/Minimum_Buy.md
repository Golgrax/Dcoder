## Description
```
Make a set of all char in string,
	then count occurences of those char,
	print sum of ceil of half of each char occurence
		for each test case
```


## Python
```python
import math 

test = int(input())
for i in range(test):
	d = {}
	s = input()

	for j in s:
		if j in d:
			d[j] += 1
		else:
			d[j] = 1
	
	S = 0
	for f in d:
		S += math.ceil(d[f]/2)
	print(S)
```


## Java
```java
import java.util.HashSet;
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		sc.nextLine();
		for (int i=0; i<test; i++) {

			int sum = 0;
			char[] fruits = sc.nextLine().toCharArray();
			HashSet<Character> set = new HashSet<>();
			for (int j=0; j<fruits.length; j++) {
				if (set.contains(fruits[j]) == false) {

					set.add( fruits[j] );
					int count = 1;
					for (int k=j+1; k<fruits.length; k++)
						if ( fruits[j]==fruits[k] )
							count++;
					
					sum += (int)Math.ceil( count/2.0 );

				}
			}
			System.out.println(sum);

		}

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>
#include <math.h>

void main() {

	int test;
	scanf("%d ", &test);
	for (int i=0; i<test; i++) {

		int sum = 0;
		char fruits[30];
		fgets(fruits, 30, stdin);
		for (int j=0; j<strlen(fruits)-1; j++) {
			if ( fruits[j] != ' ' ) {

				int count = 1;
				for (int k=j+1; k<strlen(fruits)-1; k++) {
					if ( fruits[j]==fruits[k] ) {
						fruits[k] = ' ';
						count++;
					}
				}
				sum += (int)ceil( count/2.0 );

			}
		}
		printf("%d\n", sum);

	}

}
```
