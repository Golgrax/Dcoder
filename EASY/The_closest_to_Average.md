## Description
```
Take sum of the array,
    then find average, 
        print it round off value....
```
## Python
```python
length = int( input() )
array = map( int, input().split() )

print( round( sum(array)/length ) )
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int length = sc.nextInt();
		int sum = 0;
		for (int i=0; i<length; i++) {
			sum += sc.nextInt();
		}

		System.out.println( Math.round(sum/length) );
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int length;
	scanf("%d", &length);

	float sum = 0;
	for (int i=0; i<length; i++) {
		int temp;
		scanf("%d", &temp);
		sum += temp;
	}

	printf("%d", sum/length+0.5);

}

```