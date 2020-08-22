## Description
```
Make list of n+1 element,
	file with m/(n+1), as this is minimum no. of chocolate,
	then starting from 0, add 1 more chocolate till
		i<m%(n+1), as this is the reminder
```


## Python
```python
test = int(input())
for t in range(test):
	n, m = map(int, input().split())
	friend = [m//(n+1)]*(n+1)
	for i in range(m%(n+1)):
		friend[i] += 1
	print(*friend)
```


## Java
```java
import java.util.Arrays;
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		for (int t=0; t<test; t++) {

			int n = sc.nextInt();
			int m = sc.nextInt();

			int[] friend = new int[n+1];
			for (int i=0; i<=n; i++) {
				friend[i] = m/(n+1);
				if ( i < m%(n+1) ) {
					friend[i] += 1;
				}
				System.out.print(friend[i]+" ");
			}

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

		int n, m;
		scanf("%d", &n);
		scanf("%d", &m);

		int friend[n+1];
		for (int i=0; i<=n; i++) {
			friend[i] = m/(n+1) + (i<m%(n+1));
			printf("%d ", friend[i]);
		}

	}

}
```
