## Description
```
This method includes finding x raise to power y by iterative approch,
	by squaring x and dividing y by 2, which reduce no. of iteration,
but we also nee modulo with z,
thus finding x^y%z
by using formula
	(ab) mod p = ( (a mod p) (b mod p) ) mod p
we can optimize space while calculation square...
```


## Python
```python
def modPower(x, y, z):
    if x == 0:
        return 0
    
    result = 1
    while y > 0:
        if (y & 1) == 1:
            result = (result * x) % z
        y = y >> 1
        x = (x * x) % z
    
    return result
 
for _ in range(int(input())):
    x, y, z = map(int, input().split())
    print(modPower(x%z, y, z))
```


## Java
```java
import java.util.*;
public class Dcoder {

	private static int modPower(int x, int y, int z) {
		if (x == 0)
			return 0;
	
		int result = 1;
		while (y > 0) {
			if ((y & 1) == 1)
				result = (result * x) % z;
			y = y >> 1;
			x = (x * x) % z;
		}
	
		return result;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int T = sc.nextInt();
		for (int t = 0; t < T; t++) {
			int x = sc.nextInt();
			int y = sc.nextInt();
			int z = sc.nextInt();

			System.out.println(modPower(x%z, y, z);
		}

	}

}
```


## C
```c
#include <stdio.h>

int modPower(int x, int y, int z) {
    if (x == 0)
        return 0;

    int result = 1;
    while (y > 0) {
        if ((y & 1) == 1)
            result = (result * x) % z;
        y = y >> 1;
        x = (x * x) % z;
    }

    return result;
}

void main() {

    int T;
    scanf("%d", &T);

    for (int t = 0; t < T; t++) {
        int x, y, z;
        scanf("%d %d %d", &x, &y, &z);

        printf("%d\n", modPower(x%z, y, z));
    }
    

}
```
