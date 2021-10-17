## Description
```
```


## Python
```python
for _ in range(int(input())):
    x, y = map(int, input().split())
    sum = lambda a: a * (a-1) // 2
    print( sum(x) * sum(y) )
```


## Java
```java
import java.util.*;
public class Dcoder {

	private static int sum(int n) {
		return n * (n-1) / 2;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int T = sc.nextInt();
		for (int t = 0; t < T; t++) {

			int x = sc.nextInt();
			int y = sc.nextInt();
	
			System.out.println(sum(x) * sum(y));

		}

	}

}
```


## C
```c
#include <stdio.h>

int sum(int n) {
    return n * (n-1) / 2;
}

void main() {

    int T;
    scanf("%d", &T);

    for (int i = 0; i < T; i++) {
        int x, y;
        scanf("%d %d", &x, &y);

        printf("%d\n", sum(x) * sum(y));
    }
    

}
```
