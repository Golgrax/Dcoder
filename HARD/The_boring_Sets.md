## Description
```
To get sum of all subset,
we have to find sum of al combination of all number from 1 to n,
as sum of any combination of number n is 2^(n-1)
as sum of numbers is n*(n+1)/2
so answer will be,
	n*(n+1)/2 * 2^(n-1)
```


## Python
```python
for _ in range(int(input())):
    n = int(input())
    sum = n * (n + 1) // 2
    combination = 2 ** (n-1)
    print(sum * combination)
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int T = sc.nextInt();
		for (int t = 0; t < T; t++) {
			int n = sc.nextInt();

			long sum = n * (n+1) / 2;
			long combination = (long)Math.pow(2, n-1);

			System.out.println(sum * combination);
		}
	}

}
```


## C
```c
#include <stdio.h>

long powerofTwo(long n) {
    if (n)
        return 2*powerofTwo(n-1);
    return 1;
}

void main() {

    int T;
    scanf("%d", &T);
    for (int t = 0; t < T; t++) {
        int n;
        scanf("%d", &n);
        
        long sum = n * (n+1) / 2;
        long combination = powerofTwo(n-1);

        printf("%ld\n", sum * combination);
    }
    

}
```
