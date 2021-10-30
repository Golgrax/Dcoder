## Description
```
Combination of single matches between any two teams can be given by,
	SUM = n * (n-1) / 2, where n is number of team...
So, if m matches is played between each team then value will be,
	SUM * m
```


## Python
```python
for _ in range(int(input())):
    t, m = map(int, input().split())
    print(t * (t-1)//2 * m)
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();
		for (int i = 0; i < n; i++) {
			int t = sc.nextInt();
			int m = sc.nextInt();

			System.out.println(t * (t-1) / 2 * m);
		}

	}

}
```


## C
```c
#include <stdio.h>

void main() {

    int n;
    scanf("%d", &n);

    for(int i=0; i<n; i++) {
        int t, m;
        scanf("%d %d", &t, &m);

        printf("%d\n", t * (t-1) / 2 * m);
    }

}
```
