## Description
```
Here we have to fine X,
	where N*X is multipe of M
		i.e. (N*X)%M = 0
As you have noticed, 
4 7   ->  7  ->  7/gcd(4,7)   ->  7/1
18 6  ->  1  ->  6/gcd(18,6)  ->  6/6
```

## Python
```python
def gcd(a, b):
    if b:
        return gcd( b, a%b )
    else:
        return a

for i in range( int(input()) ):
    n,m = map(int, input().split())
    print( m//gcd( max(n,m), min(n,m) ) )
```


## Java
```java
import java.util.Scanner;

public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();

		for (int i=0; i<test; i++) {
			int N = sc.nextInt();
			int M = sc.nextInt();

			int n=N, m=M, temp;
			if ( m > n ) { temp=n; n=m; m=temp; }
			System.out.println(M/gcd(n, m));
		}

	}

	private static int gcd( int a, int b ) {
	return (b!=0) ? gcd(b, a%b) : a;
	}

}
```


## C
```c
#include <stdio.h>

int gcd( int a, int b ) {
	return b ? gcd(b, a%b) : a;
}

void main() {

	int test, N, M, temp, n, m;

	scanf("%d", &test);
	for (int i=0; i<test; i++) {
		scanf("%d", &N);
		scanf("%d", &M);

		n = N;
		m = M;
		if (m > n) { temp=n; n=m; m=temp; }

		printf("%d\n", M/gcd(n, m));

	}

}
```
