## Description
```
	Here you have to divide given
		n no. of students into group of two or less
	if we do n/3 and take floor of it, then we will get answer
	e.g. 5
	5/3 = 1.33 take floor 
			1.33 => 1
	So, there will be 2 team of 3,2
	but 2 student per group is not valid
		So there will be 1 team....
```
## Python
```python
import math

student = int(input())				# 10
team = student/3					# 3.33
print(math.floor(team))				# 3
```
## Java
```java
import java.util.Scanner;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int student = sc.nextInt();					// 10
		float team = student/3.0F;					// 3.33
		System.out.println((int)Math.floor(team));		// 3
	}
}
```
## C
```c
#include <stdio.h>

void main() {
	
	int student;

	scanf("%d", &student);	// 10
	int team = student/3;	// 3

	printf("%d\n", team);
}
```