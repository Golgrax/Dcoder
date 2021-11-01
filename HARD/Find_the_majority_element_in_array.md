## Description
```
```


## Python
```python
n = int(input())

l = list(map(int, input().split()))

map = {}
for i in l:
    map[i] = map.get(i, 0) + 1
    if map[i] > n//2:
        print(i)
        break
else:
    print(-1)
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int found = -1;

		int n = sc.nextInt();

		int[] arr = new int[n];
		for(int i=0; i<n; i++)
			arr[i] = sc.nextInt();
		
		for(int i=0; i<n; i++) {

			if (arr[i] > -1) {
				int count = 1;

				for(int j=i+1; j<n; j++) {
					if (arr[j] == arr[i])
						count++;

					if (count > n/2) {
						found = arr[i];
						break;
					}
				}

				if (found > -1) 
					break;
			}
		}

		System.out.println(found);
	}

}
```


## C
```c
#include <stdio.h>

void main() {

    int found = -1;

	int n;
    scanf("%d", &n);

	int arr[1000];
	for(int i=0; i<n; i++)
        scanf("%d", &arr[i]);
	
	for(int i=0; i<n; i++) {

		if (arr[i] > -1) {
			int count = 1;

			for(int j=i+1; j<n; j++) {
				if (arr[j] == arr[i])
					count++;

				if (count > n/2) {
					found = arr[i];
					break;
				}
			}

			if (found > -1) 
				break;
		}
	}

	printf("%d", found);

}
```
