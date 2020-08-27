## Description
```
Take input and convert if to Decimal format...
Then use any of the prime checking function....
```


## Python
```python
def isPrime(n):
	if n < 2:
		return False
	if n==2 or n==3:
		return True
	if n%2==0 or n%3==0:
		return False
	for i in range(5, int(n**0.5)+1, 6):
		if n%i==0 or n%(i+2)==0:
			False
	return True


num = int( input(), 2 )
print(num)
print( "Prime" if isPrime(num) else "Not Prime")
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	private static boolean isPrime(int n) {

		if ( n < 2 ) {
			return false;
		} else if ( n==2 || n==3 ) {
			return true;
		} else if ( n%2==0 || n%3==0 ) {
			return false;
		}

		for ( int i=5; i <= (int)Math.sqrt(n); i+=6 ) {
			if ( n%i==0  || n%(i+2)==0 ) {
				return false;
			}
		}
		return true;

	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int num = Integer.parseInt( sc.nextLine(), 2 );

		System.out.println( num );
		System.out.println( isPrime(num) ? "Prime" : "Not Prime" );

	}

}
```


## C
```c
#include <stdio.h>
#include <math.h>

int isPrime(int n) {

	if (n<2) {
		return 0;
	} else if ( n==2 || n==3 ) {
		return 1;
	} else if ( n%2==0 || n%3==0 ) {
		return 0;
	}
	
	for (int i=5; i<=(int)sqrt(n); i+=6) {
		if (n%i==0 || n%(i+2)==0) {
			return 0;
		}
	}
	return 1;

}

int toDecimal(int bin) {

	int dec = 0;
	int p = 0;

	while ( bin ) {
		dec = dec + pow(2, p)*(bin%10);
		p += 1;
		bin /= 10;
	}
	
	return dec;

}

void main() {

	int num;
	scanf("%d", &num);

	num = toDecimal(num);
	printf("%d\n", num);
	printf( isPrime(num) ?
			"Prime\n" :
			"Not Prime\n" );

}
```
