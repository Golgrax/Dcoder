## Description
```
We have to calculate fare on following condition..
	for first a km prise is m, for rest distances(d-a) prices is n
Note: in input a given as max km for price m
		so it might pe possible that total distance will be less then a
so if d > a; fare = a*m+(d-a)*m
	else fare = d*m
```
## Python
```python
a, m, n, d = map(int, input().split())

if d > a:
	print(a*m+(d-a)*n)
else:
	print(d*m)
```
## Java
```java
import java.util.*;

public class zztemp {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int a = sc.nextInt();
		int m = sc.nextInt();
		int n = sc.nextInt();
		int d = sc.nextInt();

		if (d > a) {
			System.out.println(a*m+(d-a)*n);
		} else {
			System.out.println(d*m);
		}
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int a, m, n, d;
	scanf("%d", &a);
	scanf("%d", &m);
	scanf("%d", &n);
	scanf("%d", &d);

	if (d > a) {
		printf("%d\n", a*m+(d-a)*n);
	} else {
		printf("%d\n", d*m);
	}
}
```