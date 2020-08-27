## Description
```
Calculate all primes in range from 0 to b,
	useing primes in range algos...
Then move lower limit to a from 0;
```


## Python
```python
def seive(b):
	prime = list(range(3,b+1,2))
	initial = 4
	seive_length = len(prime)

	for step in range(3, b+1, 2):
		for i in range(initial, seive_length+1, step):
			prime[i-1] = 0
		initial += 2*(step+1)
		if initial > seive_length:
			return [2]+list(filter(None, prime))


a, b =map(int, input().split())
primes = seive(b)
i=0
while primes[i] < a:
	i += 1

print(*primes[i:])
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	private static int[] seive(int m) {

		int max = (int)Math.ceil(m/2.0)-1;
		int[] prime = new int[max];
		int initial = 4;
		int seive_length = max;

		for (int i=0; i<max; i++) { prime[i] = 3+2*i; }

		for (int s=3; s<=m; s+=2) {
			for (int i=initial; i<=seive_length; i+=s){
				prime[i-1] = 0;
			}
			initial += 2*(s+1);
			if (initial > seive_length) { return prime; }
		}
		return prime;

	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int a = sc.nextInt();
		int b = sc.nextInt();

		int[] prime = seive(b);

		int i = 0;
		if (a <= 2) {
			System.out.print("2 ");
		} else {
			while (prime[i] < a) { i++; }
		}

		for (; i<prime.length; i++) {
			if (prime[i] != 0) {
				System.out.print(prime[i]+" ");
			}
		}
	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

int* seive(int max) {

	int *prime = (int *)malloc(max*sizeof(int));
	int initial = 4;
	int seive_length = max;

	for(int i=0; i<max; i++) { prime[i] = 3+2*i; }

	for(int s=3; s<=max; s+=2) {
		for (int i=initial; i<=seive_length; i+=s){
			prime[i-1] = 0;
		}
		initial += 2*(s+1);
		if (initial > seive_length) { return prime; }
	}

	return prime;

}

void main() {

	int a, b;
	scanf("%d", &a);
	scanf("%d", &b);

	int length = b/2.0+0.5-1;
	int *prime = seive(length);

	int i = 0;
	if (a <= 2) {
		printf("2 ");
	} else {
		while (prime[i] < a) { i++; }
	}

	for (; i<length; i++) {
		if ( prime[i] ) {
			printf("%d ", prime[i]);
		}
	}

}
```
