## Description
```
```


## Python
```python
def primes(n):
    prime = [True]*(n+1)
    
    p = 2
    while p * p <= n:
        if prime[p] == True:
            for i in range(p * p, n+1, p):
                prime[i] = False
        p += 1
        
    return [i for i in range(2, n+1) if prime[i]]

primeList = primes(2750159)

n = int(input())
l = list(map(int, input().split()))

    
for i in l:
    print(primeList[i-1], end=" ")
```


## Java
```java
import java.util.*;
public class Dcoder {

	private static int[] primes(int n) {
		boolean[] prime = new boolean[n+1];
	
		for(int i=0; i<=n; i++)
			prime[i] = true;
	
		int p = 2;
		while( p*p <= n ) {
			if (prime[p])
				for(int i=p*p; i<=n; i+=p)
					prime[i] = false;
			p += 1;
		}
	
		int[] primeList = new int[200000];
		int ptr = 0;
		for(int i=2; i<=n; i++)
			if (prime[i])
				primeList[ptr++] = i;
		
		return primeList;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int[] primeList = primes(2750159);

		int n = sc.nextInt();

		int[] arr = new int[n];
		for (int i = 0; i < n; i++) 
			arr[i] = sc.nextInt();

		for(int i=0; i<n; i++)
			System.out.printf("%d ", primeList[arr[i] - 1]);
	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

int *primes(int n) {
    int *prime = (int *)malloc((n+1)*sizeof(int));

    for(int i=0; i<=n; i++)
        prime[i] = 1;

    int p = 2;
    while( p*p <= n ) {
        if (prime[p])
            for(int i=p*p; i<=n; i+=p)
                prime[i] = 0;
        p += 1;
    }

    int *primeList = (int *)malloc((200000)*sizeof(int));
    int ptr = 0;
    for(int i=2; i<=n; i++)
        if (prime[i])
            primeList[ptr++] = i;
    
    free(prime);
    return primeList;
}

void main() {

    int *primeList = primes(2750159);

    int n;
    scanf("%d", &n);

    int arr[100];
    for(int i=0; i<n; i++)
        scanf("%d", &arr[i]);
    
    for(int i=0; i<n; i++) 
        printf("%d ", primeList[arr[i] - 1]);

    free(primeList);
}
```
