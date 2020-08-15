## Description
```
Take input,
	convert integer to Binary format
		But do not reverse it...
	i.e. 16 will be 1 not 10000
	Then convert the this Binary again to Decimal
And print it.....
```


## Python
```python
test = int(input())

for i in range(test):
	revBin = bin( int(input()) )[-1:1:-1]
	Dec = int( revBin, 2 )
	print( Dec )
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		for (int i=0; i<test; i++) {

			int input = sc.nextInt();
			int revBin = 0;
			while ( input != 0 ) {
				revBin = revBin*10 + input%2;
				input = input >> 1;
			}
			int Dec = Integer.parseInt(String.valueOf(revBin), 2);
			System.out.println( Dec );

		}

	}

}
```


## C
```c
#include <stdio.h>
#include <math.h>

int toBin( int n ) {

	int  a = 0;
	while ( n ) {
		a = a*10 + n%2;
		n = n >> 1;
	}
	return a;

}


int toDec( int n ) {

	int a = 0;
	int i = 0;
	while ( n > 0 ) {
		a += (int)pow(2, i)*(n%10);
		n /= 10;
		i++;
	}
	return a;

}


void main() {

	int test;
	scanf("%d", &test);

	for (int i=0; i<test; i++) {

		int input;
		scanf("%d", &input);
		int revBin = toBin( input );
		int Dec = toDec( revBin );
		printf("%d\n", Dec);

	}

}
```
