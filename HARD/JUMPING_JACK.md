## Description
```
For every testcase,
	count the number of smaller or equal to tower to left of current tower
	till the imediate larger tower to the left...
```


## Python
```python
for _ in range(int(input())):
    n = int(input())
    
    l = list(map(int, input().split()))
    o = []
    
    for i in range(n):
        cnt = 0
        for j in range(i-1, -1, -1):
            if l[j] > l[i]:
                break
            cnt += 1
        o.append(cnt)
    
    print(*o)
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int T = sc.nextInt();
		for (int t = 0; t < T; t++) {
			
			int N = sc.nextInt();

			int[] arr = new int[N];
			for (int i = 0; i < N; i++)
				arr[i] = sc.nextInt();
			
			for (int i = 0; i < N; i++) {
				int cnt = 0;
				for (int j = i - 1; j >= 0; j--) {
					if (arr[j] > arr[i])
						break;
					cnt++;
				}
				System.out.printf(i == N-1 ? "%d\n" : "%d ", cnt);
			}

		}

	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

void main() {

    int N, T;

    scanf("%d", &T);
    for (int t = 0; t < T; t++) {
        
        scanf("%d", &N);

        int *arr = (int *)malloc(N * sizeof(int));
        for (int i = 0; i < N; i++)
            scanf("%d", &arr[i]);
        
        for (int i = 0; i < N; i++) {
            int cnt = 0;
            for(int j = i - 1; j >= 0; j--) {
                if (arr[j] > arr[i])
                    break;
                cnt++;
            }
            printf(i == N-1 ? "%d\n" : "%d ", cnt);
        }

        free(arr);

    }

}
```
