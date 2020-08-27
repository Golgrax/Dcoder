## Description
```
Print person with largest sum value...
```
## Python
```python
garry = sum(map(int,input().split()))
sharry = sum(map(int,input().split()))

if garry > sharry:
	print("Garry", garry-sharry)
else:
	print("Sharry", sharry-garry)
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int sum_garry = 0;
		int sum_sharry = 0;

		for (int i=0; i<3; i++)
			sum_garry += sc.nextInt();
		for (int i=0; i<3; i++)
			sum_sharry += sc.nextInt();

		if (sum_garry > sum_sharry) {
			System.out.println("Garry "+(sum_garry-sum_sharry));
		} else {
			System.out.println("Sharry "+(sum_sharry-sum_garry));
		}
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int sum_garry = 0;
	int sum_sharry = 0;

	for (int i=0; i<3; i++) {
		int temp;
		scanf("%d", &temp);
		sum_garry += temp;
	}
	for (int i=0; i<3; i++) {
		int temp;
		scanf("%d", &temp);
		sum_sharry += temp;
	}

	if (sum_garry > sum_sharry) {
		printf("Garry %d\n", sum_garry-sum_sharry);
	}
	else {
		printf("Sharry %d\n", sum_sharry-sum_garry);
	}

}

```