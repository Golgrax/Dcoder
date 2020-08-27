## Description
```
Take sides input,
	makeout sum = a+b+c
	and findout area using Herons formula,
	A = 1/4 * ( 4*a^2*b^2 - ( a^2+b^2-c^2 )*2 )^0.5
Then prine True if int(A)==sum else False.
Note: do not forget to typecast area...
```
## Python
```python
test = int(input())
for i in range(test):
    a,b,c = map(int, input().split())
    A = ( ( 4*a*a*b*b-( a*a+b*b-c*c )**2 )**0.5 )/4
    print(int(A)==a+b+c)
```
## Java
```java
import java.util.*;

public class Dcoder {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int test = sc.nextInt();

		for (int i=0; i<test; i++) {
			int a = sc.nextInt();
			int b = sc.nextInt();
			int c = sc.nextInt();
			
			double A = ( Math.pow( 4*a*a*b*b- Math.pow(a*a+b*b-c*c, 2), 0.5) )/4;

			System.out.println( (int)A==a+b+c ? "True" : "False" );
		}
	}
}
```
## C
```c
#include <stdio.h>
#include <math.h>

void main() {

	int test;
	scanf("%d", &test);

	for ( int i=0; i<test; i++ ) {

		int a, b, c;
		scanf("%d", &a);
		scanf("%d", &b);
		scanf("%d", &c);

		float A = ( pow( 4*a*a*b*b- pow(a*a+b*b-c*c, 2), 0.5) )/4;

		printf( (int)A==a+b+c ? "True\n" : "False\n" );

	}
}
```