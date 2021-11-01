## Description
```
```


## Python
```python
n, m = map(int, input().split())
a, b = map(int, input().split())
c, d = map(int, input().split())

if a+c <= n:
    print("Yes")
elif a+d <= n:
    print("Yes")
elif a<=n and c<=n and b+d<=m:
    print("Yes")
elif a<=n and d<=n and b+c<=m:
    print("Yes")
else:
    print("No")
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();
		int m = sc.nextInt();
	
		int a = sc.nextInt();
		int b = sc.nextInt();
	
		int c = sc.nextInt();
		int d = sc.nextInt();
	
		if (a+c <= n)
			System.out.println("Yes");
		else if (a+d <= n)
			System.out.println("Yes");
		else if (a <= n && c <= n && b+d <= n)
			System.out.println("Yes");
		else if (a <= n && d <= n && b+c <= n)
			System.out.println("Yes");
		else
			System.out.println("No");
	
	}

}
```


## C
```c
#include <stdio.h>

void main() {

    int n, m;
    scanf("%d %d", &n, &m);

    int a, b;
    scanf("%d %d", &a, &b);

    int c, d;
    scanf("%d %d", &c, &d);

    if (a+c <= n)
        printf("Yes");
    else if (a+d <= n)
        printf("Yes");
    else if (a <= n && c <= n && b+d <= n)
        printf("Yes");
    else if (a <= n && d <= n && b+c <= n)
        printf("Yes");
    else
        printf("No");

}
```
