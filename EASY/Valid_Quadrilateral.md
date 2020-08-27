## Description
```
Take inputs of four angle, then add it,
	then check if sum == 360 then true
	else false
```
## Python
```python
test = int(input())

for i in range(test):
	angles = list(map(int, input().split()))
	if sum(angles) == 360:
		print("YES")
	else:
		print("NO")
```
## Java
```java
import java.util.*;

public class Dcoder {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int test = sc.nextInt();
		
		for (int i=0; i<test; i++) {
			
			int sum = 0;
			for (int j=0; j<4; j++) { sum += sc.nextInt(); }

			if (sum == 360) {
				System.out.println("YES");
			} else {
				System.out.println("NO");
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

	for (int i=0; i<test; i++) {

		int sum=0;
		for (int j=0; j<4; j++) {
			int temp;
			scanf("%d", &temp);
			sum += temp;
		}
		if (sum == 360) {
			printf("YES\n");
		}
		else {
			printf("NO\n");
		}

	}

}
```