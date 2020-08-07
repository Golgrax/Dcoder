## Description
```
Here you have print all value of
    2^i where i ranges from 0 to input...
Special case is that,
    if input is negative then 
        2^0 will be 1.0
        and remaing value should not have 0 on right most end...
        like,
            2^-1 = 0.5
            2^-2 = 0.25
            and so on...
```
## Python
```python
max_range = int(input())

if max_range > 0:
	print( *[2**i for i in range(max_range+1)],
			sep="," )
else:
	print( *[float(2**i)
				for i in range(0,max_range-1,-1)],
			sep="," )
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int max_range = sc.nextInt();

		if ( max_range > 0 ) {
			for (int i=0; i<=max_range; i++) {
				int pow = (int)Math.pow(2, i);
				System.out.print( i==max_range ? pow+"\n" : pow+"," );
			}
		} else {
			for (int i=0; i>=max_range; i--) {
				float pow = (float)Math.pow(2, i);
				System.out.print( i==max_range ? pow+"\n" : pow+"," );
			}
		}
	}
}
```
## C
```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

void trimZero( char *s, float f) {

	sprintf(s, "%f", f);
	int i = strlen(s)-1;
	while (s[i-1] != '.' && s[i]=='0') {
		s[i] = '\0';
		i--;
	}

}

void main() {

	int max_range;
	scanf("%d", &max_range);

	if ( max_range > 0 ) {
		for (int i=0; i<=max_range; i++) {
			int val = pow(2, i);
			printf( i==max_range?"%d\n":"%d,", val);
		}
	} else {
		for (int i=0; i>=max_range; i--) {
			char *val;
			trimZero( val, pow(2,i) );
			printf( i==max_range?"%s\n":"%s,", val);
		}
	}

}

```