## Description
```
Seperae each digit,
	then take cube of each digit
		then add it
			lastly heck if it is equal to original no....
```
## Python
```python
number = input()

if sum(map(lambda x: int(x)**3, number)) == int(number):
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
		
		int number = sc.nextInt();

		int temp = number;
		int sum = 0;
		while (temp != 0) {
			sum += Math.pow(temp%10, 3);
			temp /= 10;
		}

		if (sum == number) {
			System.out.println("YES");
		} else {
			System.out.println("NO");
		}

	}
}
```
## C
```c
#include <stdio.h>
#include <math.h>

void main() {

	int number;
	scanf("%d", &number);

	int temp = number;
	int sum = 0;
	while (temp != 0) {
		sum += pow(temp%10, 3);
		temp /= 10;
	}

	if (sum == number) {
		printf("YES\n");
	} else {
		printf("NO\n");
	}
}
```