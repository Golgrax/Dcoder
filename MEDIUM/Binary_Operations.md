## Description
```
The simplest way to solve this,
	is convert input to decimal no.
then perform operation on it....
Then print answer back in Binary format...
```


## Python
```python
a, b = input().split()

print( bin( int(a,2) + int(b,2) )[2:] )
print( bin( int(a,2) * int(b,2) )[2:] )
```


## Java
```java
import java.util.Scanner;

public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		String[] arr = sc.nextLine().split(" ");
		long a = Long.parseLong(arr[0], 2);
		long b = Long.parseLong(arr[1], 2);

		System.out.println( Long.toBinaryString(a+b) );
		System.out.println( Long.toBinaryString(a*b) );

	}

}
```


## C
```c
#include <stdio.h>
#include <math.h>

long binToDec( long a ) {

	long decimal = 0;
	int length = 0;
	while ( a ) {
		decimal += pow(2, length) * (a%10);
		a /= 10;
		length++;
	}
	return decimal;

}

long decToBin( long a ) {

	long temp = 0;
	int c0 = 0, i0 = 1;
	while ( a ) {
		temp = temp*10 + a%2;
		if (i0 && a%2==0) { c0++; }
		else { i0 = 0; }
		a /= 2;
	}

	long binary = 0;
	while ( temp ) {
		binary = binary*10 + temp%10;
		temp /= 10;
	}
	binary = c0 ? binary*pow(10, c0) : binary;

	return binary;

}

void main() {

	long a, b;
	scanf("%ld", &a);
	scanf("%ld", &b);

	a = binToDec(a);
	b = binToDec(b);

	printf("%ld\n", decToBin(a+b) );
	printf("%ld\n", decToBin(a*b) );

}
```
