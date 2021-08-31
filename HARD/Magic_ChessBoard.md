## Description
```
If you analyse the pattern
for,
1 ->  1 -> 1*1
2 ->  5 -> 2*2 + 1*1
3 -> 14 -> 3*3 + 2*2 + 1*1
4 -> 30 -> 4*4 + 3*3 + 2*2 + 1*1
and for n,
n -> n*n + (n-1)*(n-1) + .... + 2*2 + 1

So if we apply sum of the squre of n natural numbers
S => n * (n + 1) * (2*n + 1) / 6
```


## Python
```python
for _ in range(int(input())):
    n = int(input())
    print(n * (n+1) * (2*n+1) // 6)
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int t = sc.nextInt();

		for(int i=0; i<t; i++) {
			int n = sc.nextInt();
			System.out.println(n * (n+1) * (2*n+1) / 6);
		}

	}

}
```


## C
```c
#include <stdio.h>

void main() {

    int t;
    scanf("%d", &t);

    for (int i = 0; i < t; i++) {
        int n;
        scanf("%d", &n);

        printf("%d", n * (n+1) * (2*n+1) / 6);
    }
    

}
```
