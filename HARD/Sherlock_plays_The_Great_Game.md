## Description
```
```


## Python
```python
from functools import reduce

for _ in range(int(input())):
    n = int(input())
    l = list(map(int, input().split()))
    
    x = reduce(lambda x, y: x^y, l)
    
    if x == 0:
        print("Sherlock")
    else:
        i = 0
        while i < n:
            j = 0
            while j < len(l):
                if x ^ j != 0:
                    del l[j]
                    break
                j += 1
            if j == len(l):
                break
            i += 1
            
        print("Sherlock" if i%2 else "Watson")
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int T = sc.nextInt();
		for (int t = 0; t < T; t++) {
			
			int n = sc.nextInt();

			long[] arr = new long[n];
			for(int i=0; i<n; i++) 
				arr[i] = sc.nextLong();
			
			long x = arr[0];
			for (int i = 1; i < n; i++) 
				x ^= arr[i];
			
			if (x == 0)
				System.out.println("Sherlock");
			else {
				int i = 0;
				while (i < n) {

					int j = 0;
					while(j < n) {
						if (arr[j] > 0 && (x ^ arr[j]) != 0) {
							arr[j] = -1;
							break;
						}
						j++;
					}
					
					if (j >= n-1)
						break;

					i++;
				}

				System.out.println(i%2 != 0 ? "Sherlock" : "Watson");
			}
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

        int n;
        scanf("%d", &n);

        long long arr[1001];
        for (int i = 0; i < n; i++)
            scanf("%ld", &arr[i]);
        
        long long x = arr[0];
        for (int i = 1; i < n; i++)
            x ^= arr[i];

        if (x == 0) {
            printf("Sherlock\n");
        } else {
            int i = 0;
            while (i < n) {
                
                int j = 0;
                while (j < n) {
                    if (arr[j] > 0 && x ^ arr[j] != 0) {
                        arr[j] = -1;
                        break;
                    }
                    j++;
                }
                
                if (j >= n-1)
                    break;

                i++;
            }
            
            printf(i%2 ? "Sherlock\n" : "Watson\n");
        }

    }
    

}
```
