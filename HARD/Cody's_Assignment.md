## Description
```
take l and r value,
	as l & r as 1-based index,
	so loop from l-1 till r-1
	and update min char value...
```


## Python
```python
n, q = map(int, input().split())
s = input()
for _ in range(q):
    l, r = map(int, input().split())
    print(min(list(s[l-1:r])))
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();
		int q = sc.nextInt();
		sc.nextLine();

		String s = sc.nextLine();

		for(int i=0; i<q; i++) {
			int l = sc.nextInt();
			int r = sc.nextInt();

			char min = 127;
			for(int j=l-1; j<r; j++)
				min = min > s.charAt(j) ? s.charAt(j) : min;
			
			System.out.println(min);
		}
	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

void main() {

    int n, q;
    scanf("%d %d", &n, &q);

    char *str = (char *)malloc((n+1)*sizeof(char));
    scanf("%s", str);
    
    for(int i=0; i<q; i++) {
        int l, r;
        scanf("%d %d", &l, &r);

        char min = str[l-1];
        for(int j=l; j<r; j++)
            min = min > str[j] ? str[j] : min;
        
        printf("%c\n", min);
    }
    
    free(str);

}
```
