## Description
```
As we know for all odd no. least significant bits are 1
then check if no. is odd the print "Yes"
	else print "No"
```
## Python
```python
test = int(input())

for i in range(test):
	num = int(input())
	print( "Yes" if num%2==1 else "No" )
```
## Java
```java
import java.util.*;

public class zztemp {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int test = sc.nextInt();
		
		for (int i=0; i<test; i++) {
			
			int num = sc.nextInt();
			if (num%2==1) {
				System.out.println("Yes");
			} else {
				System.out.println("No");
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

		int temp;
		scanf("%d", &temp);
		if (temp%2) {
			printf("Yes");
		}
		else {
			printf("No");
		}

	}

}
```