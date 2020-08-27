## Description
```
	Assume,
	there are 12 members, so they will placed 
	as numbers on clock from 1-12.
	so,
		opposite to 2 is 8
		opposite to 6 is 12
		opposite to 3 is 9
		opposite to 9 is 3
	so
	if there are n members and x is position and h is half of numbers
	if x > h
		then position of partner is x-h
	else
		position of partner is x+h
```
## Python
```python
n,x = map(int, input().split())
if x < n//2:
    print(x+n//2)
else:
    print(x-n//2)
```
## Java
```java
import java.util.Scanner;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int members = sc.nextInt();
		int position = sc.nextInt();
		int half = members/2;

		if (position < half) {
			System.out.println(position + half);
		} else {
			System.out.println(position - half);
		}

	}
}```
## C
```c
#include <stdio.h>

void main() {
	
	int position, members;

	scanf("%d", &members);
	scanf("%d", &position);
	int half = members/2;

	if (position < half) {
		printf("%d", position + half);
	}
	else {
		printf("%d", position - half);
	}
}

```