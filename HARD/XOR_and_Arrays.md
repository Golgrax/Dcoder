## Description
```
take inputs,
	as c = a^b
	   c^a = b
	so xor of all element in arr,
	then xor it with k...
	this is required answer.
```


## Python
```python

for _ in range(int(input())):
    n, k = map(int, input().split())
    l = list(map(int, input().split()))

    xor = k
    for i in range(n):
        xor ^= l[i]
    
    print(xor)
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int T = sc.nextInt();
		for(int t=0; t<T; t++) {
			int n = sc.nextInt();
			int k = sc.nextInt();

			int[] l = new int[n];
			for(int i=0; i<n; i++)
				l[i] = sc.nextInt();

			int xor = k;
			for(int i=0; i<n; i++)
				xor ^= l[i];

			System.out.println(xor);
		}
	}

}
```


## C
```c
#include <stdio.h>

void main() {

    int T;
    scanf("%d", &T);

    for(int t=0; t<T; t++) {
        int n, k;
        scanf("%d", &n);
        scanf("%d", &k);

        int l[n];
        for(int i=0; i<n; i++)
            scanf("%d", &l[i]);
        
        int xor = k;
        for(int i=0; i<n; i++)
            xor ^= l[i];

        printf("%d\n", xor);
    }

}
```
