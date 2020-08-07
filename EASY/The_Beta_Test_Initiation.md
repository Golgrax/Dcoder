## Description
```
Take float input,
	compare user with beta version...
```
## Python
```python
beta, user = map(int, input().split())

if user >= beta:
	print("Yes")
else:
	print("No")
```
## Java
```java
import java.util.*;

public class zztemp {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		float beta = sc.nextFloat();
		float user = sc.nextFloat();

		if (user >= beta) {
			System.out.println("Yes");
		} else {
			System.out.println("No");
		}
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	float beta, user;
	scanf("%f", &beta);
	scanf("%f", &user);

	if (user >= beta) {
		printf("Yes");
	}
	else {
		printf("No");
	}

}
```