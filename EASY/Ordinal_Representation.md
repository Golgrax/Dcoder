## Description
```
Seperate out last digit of number and check this condition...
if digit==0 or digit>3 then ordinal is th
if digit==1 then ordinal is st
if digit==2 then ordinal is nd
if digit==3 then ordinal is rd
```
## Python
```python
number = int(input())

digit = number%10
if digit==0 or digit>3:
	print(f"{number}th")
elif digit == 1:
	print(f"{number}st")
elif digit == 2:
	print(f"{number}nd")
elif digit == 3:
	print(f"{number}rd")
```
## Java
```java
import java.util.*;

public class zztemp {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int number = sc.nextInt();

		int digit = number%10;
		if (digit==0 || digit>3) {
			System.out.println(number+"th");
		} else if (digit == 1) {
			System.out.println(number+"st");
		} else if (digit == 2) {
			System.out.println(number+"nd");
		} else if (digit == 3) {
			System.out.println(number+"rd");
		}
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int number;
	scanf("%d", &number);

	int digit = number%10;
	if (digit==0 || digit>3) {
		printf("%dth\n", number);
	}
	else if (digit == 1) {
		printf("%dst\n", number);
	}
	else if (digit == 2) {
		printf("%dnd\n", number);
	}
	else if (digit == 3) {
		printf("%drd\n", number);
	}
}
```