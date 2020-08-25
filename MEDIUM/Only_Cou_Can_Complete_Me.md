## Description
```
Take number, and an iteration variable(i) initialize to 1,
	iterate, while num*i have no, decimal part
		by comparing (int)(num*i) != num*i,
Then print i...
```


## Python
```python
n = float(input())

i = 1
while int(n*i)!=n*i:
	i += 1
 
print(i)
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		float num = sc.nextFloat();

		int i = 1;
		while ( (int)(num*i) != num*i ) { i++; }

		System.out.println(i);

	}

}
```


## C
```c
#include <stdio.h>

void main() {

	float num;
	scanf("%f", &num);

	int i = 1;
	while ( (int)(num*i) != num*i ) { i++; }

	printf("%d\n", i);

}
```
