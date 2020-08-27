## Description
```
Here, first compare input with 1000
	if it is less then equal to 1000, then print it
	else subtract 0.1% discount from it...
Dont forget to set presision to 2 digits.
```
## Python
```python
test = int(input())

for i in range(test):
    expanse = float(input())
    if expanse <= 1000:
        print ("%.2f" %expanse)
    else:
        print("%.2f" %(expanse-expanse*0.10))
		
	```
## Java
```java
import java.util.*;

public class Dcoder {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int test = sc.nextInt();

		for (int i=0; i<test; i++) {

			float expanse = sc.nextFloat();
			if (expanse <= 1000) {
				System.out.printf("%.2f\n", expanse);
			} else {
				System.out.printf("%.2f\n", expanse-expanse*0.1);
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

		float expanse;
		scanf("%f", &expanse);
		if ( expanse <= 1000 ) {
			printf("%.2f\n", expanse);
		}
		else {
			printf("%.2f\n", expanse-expanse*0.1);
		}

	}

}
```