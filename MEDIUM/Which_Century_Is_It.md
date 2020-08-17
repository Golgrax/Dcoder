## Description
```
Take year and add 99 to it,
	to move input next value
and print into ordinal form
	if n%10 == 1, st
	if n%10 == 2, nd
	if n%10 == 3, rd
	else, th
	EXCEPT
	for value 11 to 13, use th
```


## Python
```python
year = int(input())

century = (year+99)//100

if century%10==1 and century!=11:
	print(f"{century}st")
elif century%10==2 and century!=12:
	print(f"{century}nd")
elif century%10==3 and century!=13:
	print(f"{century}rd")
else:
	print(f"{century}th")
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int year = sc.nextInt();
		int century = (year+99)/100;

		if ( century>4 && century<20 ) {
			System.out.println( century+"th" );
		} else {
			switch (century%10) {
				case 1:
					System.out.println( century+"st" );
					break;
				case 2:
					System.out.println( century+"nd" );
					break;
				case 3:
					System.out.println( century+"rd" );
					break;
				default:
					System.out.println( century+"th" );
			}
		}

	}

}
```


## C
```c
#include <stdio.h>

void main() {

	int year;
	scanf("%d", &year);
	int century = (year+99)/100;

	if ( century>4 && century<20 ) {
		printf( "%dth\n", century );
	} else {
		switch (century%10) {
			case 1:
				printf( "%dst\n", century );
				break;
			case 2:
				printf( "%dnd\n", century );
				break;
			case 3:
				printf( "%drd\n", century );
				break;
			default:
				printf( "%dth\n", century );
		}
	}


}
```
