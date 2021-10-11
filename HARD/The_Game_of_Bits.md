## Description
```
A very simple approch is if you notice,
	for n there are 2*n-1 elements in combination set
	where every element is repeated even time,
	and xor or even count of same element is zero.
	Thus if n > 1 then answer is 0 else its element
	because only for n = 1, the count of element is odd...
```


## Python
```python
for _ in range(int(input())):
    n = int(input())
    l = list(map(int, input().split()))
    
    if n > 1:
        print(0)
    else:
        print(l[0])
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int T = sc.nextInt();
		for(int t=0; t<T; t++) {
			int n = sc.nextInt();

			sc.nextLine();
			String[] arr = sc.nextLine().split(" ");

			System.out.println(n > 1 ? 0 : arr[0]);
		}
	}

}
```


## C
```c
#include <stdio.h>

void main() {

    int T, N;
    char s[10];

    scanf("%d", &T);
    for(int t=0; t<T; t++) {
        scanf("%d\n", &N);
        scanf("%[^\n]%*c", s);

        printf("%s\n", N > 1 ? "0" : s);
    }

}
```
