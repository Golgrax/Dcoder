## Description
```
```


## Python
```python
def isPrime(n):
    if n == 2:
        return True
    
    if n < 3:
        return False
    
    for i in range(2, int(n**0.5)+1):
        if n % i == 0:
            return False
    
    return True


for _ in range(int(input())):
    n = int(input())
    l = list(map(int, input().split()))[:n]
    
    max_cnt = 0
    cnt = 0
    
    for i in l:
        if isPrime(i):
            cnt += 1
        else:
            max_cnt = max(max_cnt, cnt)
            cnt = 0
    max_cnt = max(max_cnt, cnt)
    
    print(max_cnt if max_cnt > 0 else -1)
            
```


## Java
```java
import java.util.*;
public class Dcoder {

	private static boolean isPrime(int n) {
		if (n == 2)
			return true;
		
		if (n < 3)
			return false;

		for (int i = 2; i*i <= n; i++) 
			if (n % i == 0)
				return false;
		
		return true;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int T = sc.nextInt();
		for(int t=0; t<T; t++) {

			int n = sc.nextInt();

			int[] arr = new int[n];
			for (int i = 0; i < n; i++) 
				arr[i] = sc.nextInt();
			
			int max_cnt = 0;
			int cnt = 0;
			for (int i = 0; i < n; i++) {
				if (isPrime(arr[i]))
					cnt++;
				else {
					max_cnt = max_cnt < cnt ? cnt : max_cnt;
					cnt = 0;
				}
			}
			max_cnt = max_cnt < cnt ? cnt : max_cnt;

			System.out.println(max_cnt > 0 ? max_cnt : -1);
			
		}
	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

int isPrime(int n) {
    if (n == 2)
        return 1;
    
    if (n < 3)
        return 0;

    for (int i = 2; i*i <= n; i++) 
        if (n % i == 0)
            return 0;
    
    return 1;
}

void main() {

    int T;
    scanf("%d", &T);
    for (int t = 0; t < T; t++) {
        
        int n;
        scanf("%d", &n);
        
        int* arr = (int *)malloc(n * sizeof(int));
        for (int i = 0; i < n; i++)
            scanf("%d", &arr[i]);
        
        int max_cnt = 0;
        int cnt = 0;
        for (int i = 0; i < n; i++) {
            if (isPrime(arr[i]))
                cnt++;
            else {
                max_cnt = max_cnt < cnt ? cnt : max_cnt;
                cnt = 0;
            }
        }
        max_cnt = max_cnt < cnt ? cnt : max_cnt;
        
        printf("%d\n", max_cnt > 0 ? max_cnt : -1);
        free(arr);
        
    }
    

}
```
