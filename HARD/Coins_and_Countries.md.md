## Description
```
This is the question of combination,
where we have N coins(objects) and R contries(places)
	to place,
	which is given by formula C = N! / (R! * (N-R)!)
	or C = (N! till r terms) / R!
```


## Python
```python
def fac(n, r):
    return 1 if r <= 0 else n*fac(n-1, r-1)


for _ in range(int(input())):
    n, r  = map(lambda x: int(x)-1, input().split())
    
    print( fac(n, r) // fac(r, r) )
```


## Java
```java
import java.util.*;
public class Dcoder {

	private static int fac(int n, int r) {
		return r <= 0 ? 1 : n * fac(n-1, r-1);
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int T = sc.nextInt();
        
        for(int t=0; t<T; t++) {
            int n = sc.nextInt() - 1;
		    int r = sc.nextInt() - 1;

		    System.out.println( fac(n, r) / fac(r, r) );
        }

	}

}
```


## C
```c
#include <stdio.h>

int fac(n, r) {
    return r <= 0 ? 1 : n * fac(n-1, r-1);
}

void main() {

    int t, n, r;
    scanf("%d", &t);

    for(int i=0; i<t; i++) {
        scanf("%d %d", &n &r);

        printf("%d\n", fac(n, r) / fac(r, r));
    }

}
```
