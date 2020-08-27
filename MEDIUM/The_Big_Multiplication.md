## Description
```

```


## Python
```python
len = int(input())
l = list(map(int, input().split()))
p = 1
for i in l:
	p = (p*i)%(10**9+7)

print(p)
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		int mod = 1000000007;
		long prod = 1;
		
		int length = sc.nextInt();
		int[] arr = new int[length];
		for(int i=0; i<length; i++) { arr[i] = sc.nextInt(); }

		for(int i=0; i<length; i++){ prod=(prod*arr[i])%mod; }

		System.out.println( prod );

	}

}
```


## C
```c
#include <stdio.h>

void main() {

	int mod = 1000000007;
	long prod = 1;
		
	int length;
	scanf("%d", &length);
	int arr[length];
	for(int i=0; i<length; i++) { scanf("%d", &arr[i]); }

	for(int i=0; i<length; i++){ prod=(prod*arr[i])%mod; }

	printf( "%ld\n", prod );

}
```
