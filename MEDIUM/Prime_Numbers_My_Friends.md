## Description
```
Make a list of prime no. till n,
	the check if sum of any 2 prime will give n...
	Then print a pair only once in acending order...
```


## Python
```python

def seive(n):
	prime = list(range(3,n+1,2))
	seive_length = len(prime)
	initial = 4

	for step in range(3, n+1, 2):
		for i in range(initial, seive_length+1, step):
			prime[i-1] = 0
		initial += 2*(step+1)

		if initial > seive_length:
			return [2] + list(filter(None, prime))

n = int(input())
l = seive(n)

t = [[i,n-i] for i in l if n-i in l and i<=n-i]

if t == []:
	print("No")
else:
	for i in t:
		print(*i)
```


## Java
```java

import java.util.Scanner;
public class Dcoder {

	private static int[] seive(int n) {

		int[] prime = new int[n/2-1];
		int seive_length = n/2-1;
		int initial = 4;

		for (int i=0,j=3;i<seive_length;i++,j+=2){ prime[i] = j; }

		for (int i=3; i<=n; i+=2) {
			for (int j=initial; j<=seive_length; j+=i) {
				prime[j-1] = 0;
			}
			initial += 2*(i+1);

			if (initial > seive_length) {
				int c = 0;
				for (int j=0; j<seive_length; j++) {
					if (prime[j]!=0) {
						c++;
					}
				}
				int[] p = new int[c+1];
				int k = 0;
				p[k++] = 2;
				for (int j=0; j<prime.length; j++) {
					if ( prime[j] != 0 ) {
						p[k++] = prime[j];
					}
				}
				return p;
			}
		}

		return prime;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		int n = sc.nextInt();

		int[] p = seive(n);
		int c = 0;

		for (int i=0; i<p.length; i++) {
			for (int j=i; j<p.length && p[i]+p[j]<=n; j++) {
				if ( p[i]+p[j] == n ) {
					c = 1;
					System.out.println(p[i]+" "+p[j]);
				}
			}
		}

		if (c == 0) {
			System.out.println("No");
		}

	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

int *seive(int n) {

	int seive_length = n/2-1;
	int p[seive_length];
	int initial = 4;

	for (int i=0,j=3; i<seive_length; i++,j+=2) { p[i] = j; }

	for (int i=3; i<=n; i+=2) {
		for(int j=initial; j<=seive_length; j+=i){ p[j-1] = 0; }

		initial += 2*(i+1);
		if (initial > seive_length) {
			int c = 0;
			for (int j=0; j<seive_length; j++)
				if (p[j])
					c++;

			int *prime = (int*)malloc((c+2)*sizeof(int));
			int k = 0;
			prime[k++] = c+2;
			prime[k++] = 2;
			for (int j=0; j<seive_length; j++)
				if (p[j])
					prime[k++] = p[j];

			return prime;
		}
	}

}

void main() {

	int n;
	scanf("%d", &n);

	int c = 1;
	int *prime = seive(n);
	int length = prime[0];

	for(int i=1; i<length; i++) {
		for (int j=i; j<length && prime[i]+prime[j]<=n; j++) {
			if ( prime[i]+prime[j] == n) {
				c = 0;
				printf("%d %d\n", prime[i], prime[j]);
			}
		}
	}

	if (c) { printf("No\n"); }

}
```
