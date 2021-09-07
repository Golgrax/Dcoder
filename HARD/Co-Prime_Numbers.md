## Description
```
To check whether 2 no. are co-prime, it gcd value should be 1,
the iterate and cnt no. of co-prime
```


## Python
```python
def gcd(a, b):
    if a%b == 0:
        return b
    else:
        return gcd(b, a%b)

p = int(input())
n = int(input())
l = list(map(int, input().split()))

cnt = 0
for v in l:
    if gcd(max(p,v), min(p,v)) == 1:
        cnt += 1 

print(cnt)
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static int gcd(int a, int b) {
		if (a%b == 0)
			return b;
		else
			return gcd(b, a%b);
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int p = sc.nextInt();
		int n = sc.nextInt();

		int[] arr = new int[n];
		for(int i=0; i<n; i++)
			arr[i] = sc.nextInt();

		int cnt = 0;
		for(int i=0; i<n; i++)
			if (gcd(Math.max(arr[i], p), Math.min(arr[i], p)) == 1)
				cnt++;
				
		System.out.println(cnt);
	}

}
```


## C
```c
#include <stdio.h>

int max(a, b) {
    return a > b ? a : b;
}

int min(a, b) {
    return a < b ? a : b;
}

int gcd(a, b) {
    if (a%b == 0)
        return b;
    else
        return gcd(b, a%b);
}

void main() {

    int p, n;
    scanf("%d", &p);
    scanf("%d", &n);

    int arr[1000];
    for(int i=0; i<n; i++)
        scanf("%d", &arr[i]);

    int cnt = 0;
    for(int i=0; i<n; i++)
        if (gcd(max(p, arr[i]), min(p, arr[i])) == 1)
            cnt++;

    printf("%d", cnt);

}
```
