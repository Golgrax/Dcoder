## Description
```
Here, you have to buy books in bundle so that
	you can evenly distribute in student..
It means, there shouldn't be any reminder..
So, if books%student==0 then Yese ekse No
```
## Python
```python
test = int(input())

for i in range(test):
	students, books = map(int, input().split())
	print( "No" if books%students else "Yes" )
```
## Java
```java
import java.util.*;

public class zztemp {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int test = sc.nextInt();

		for (int i=0; i<test; i++) {
			int students = sc.nextInt();
			int books = sc.nextInt();

			System.out.println( (books%students != 0) ? "No" : "Yes" );
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
		int students, books;
		scanf("%d", &students);
		scanf("%d", &books);

		printf( (books%students != 0) ? "No" : "Yes" );
	}
}
```