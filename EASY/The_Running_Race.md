## Description
```
Take inputs and divde length by speed,
	Person with smallest value will win...
Note: use float value
```
## Python
```python
length, alex, ryan = map(int, input().split())

if length/alex < length/ryan:
	print("Alex")
elif length/alex > length/ryan:
	print("Ryan")
else:
	print("Draw")
```
## Java
```java
import java.util.*;

public class Dcoder {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		float length = sc.nextFloat();
		float alex = sc.nextFloat();
		float ryan = sc.nextFloat();

		if (length/alex < length/ryan) {
			System.out.println("Alex");
		} else if (length/alex > length/ryan) {
			System.out.println("Ryan");
		} else {
			System.out.println("Draw");
		}
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	float length, alex, ryan;
	scanf("%f", &length);
	scanf("%f", &alex);
	scanf("%f", &ryan);

	if (length/alex < length/ryan) {
		printf("Alex");
	}
	else if (length/alex > length/ryan) {
		printf("Ryan");
	}
	else {
		printf("Draw");
	}

}
```