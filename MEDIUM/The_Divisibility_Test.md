## Description
```
Given three value, n,x,y
	Where n -> max limit
	and x -> starting limit
	and y -> is no. to avoid...
	iterate from x to n, take i
	print i only if i is divsible by x but not divisible by y...
```


## Python
```python
test = int(input())
for t in range(test):
	n, x, y = map(int, input().split())
	print(*[i for i in range(x, n) if i%x==0 and i%y!=0]) 
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		for (int t=0; t<test; t++) {
			int n = sc.nextInt();
			int x = sc.nextInt();
			int y = sc.nextInt();
	
			for (int i=x; i<n; i++)
				if ( i%x==0 && i%y!=0 )
					System.out.print(i+" ");
		}

	}

}
```


## C
```c
#include <stdio.h>

void main() {

	int test;
	scanf("%d", &test);

	for (int t=0; t<test; t++) {
		int n, x, y;
		scanf("%d", &n);
		scanf("%d", &x);
		scanf("%d", &y);
	
		for (int i=x; i<n; i++)
			if ( i%x==0 && i%y!=0 )
				printf("%d ", i);

	}

}
```
