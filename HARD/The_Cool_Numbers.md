## Description
```
```


## Python
```python
for _ in range(int(input())):
    r, k = map(int, input().split())
    
    cool_cnt = 0
    for i in range(1, r+1):
        cnt = 0
        temp = i
        while temp:
            if temp % 8 == 5:
                cnt += 1
                temp //= 2
            temp //= 2
        if cnt >= k:
            cool_cnt += 1
            
    print(cool_cnt)
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int T = sc.nextInt();
	
		for (int t = 0; t < T; t++) {
        
        int r = sc.nextInt();
		int k = sc.nextInt();

        int cool_cnt = 0;
        for (int i = 1; i <= r; i++) {
            int cnt = 0;
            int temp = i;

            while (temp > 0) {
                if (temp%8 == 5) {
                    cnt++;
                    temp /= 2;
                }
                temp /= 2;
            }

            if (cnt >= k)
                cool_cnt++;            
        }
        
		System.out.println(cool_cnt);

    }

	}

}
```


## C
```c
#include <stdio.h>

void main() {

    int T;
    scanf("%d", &T);
    for (int t = 0; t < T; t++) {
        
        int r, k;
        scanf("%d %d", &r, &k);

        int cool_cnt = 0;
        for (int i = 1; i <= r; i++) {
            int cnt = 0;
            int temp = i;

            while (temp) {
                if (temp%8 == 5) {
                    cnt++;
                    temp /= 2;
                }
                temp /= 2;
            }

            if (cnt >= k)
                cool_cnt++;            
        }
        
        printf("%d\n", cool_cnt);

    }
    

}
```
