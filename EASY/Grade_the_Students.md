## Description
```
Use if else statement with conditions
	M>70 && A>50 then pass else fails
```
## Python
```python
test = int(input())
for i in range(test):
    M, A = map(int, input().split())
    if M>70 and A>50:
        print("Pass")
    else :
        print("Fail")

```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int test = sc.nextInt();

		for (int i=0; i<test; i++) {
			int M = sc.nextInt();
			int A = sc.nextInt();
			System.out.println( (M>70 && A>50) ? "Pass" : "Fail" );
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
		int M, A;
		scanf("%d", &M);
		scanf("%d", &A);
		printf( (M>70 && A>50) ? "Pass\n" : "Fail\n" );
	}
}
```