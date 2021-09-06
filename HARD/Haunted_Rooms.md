## Description
```
Take 2D input array,
and map column-wise
	if any 0 is found
		then break inner loop.
```


## Python
```python
n, m = map(int, input().split())

room = []
for i in range(n):
    room.append(list(map(int, input().split())))

cost = 0
for j in range(m):
    for i in range(n):
        if room[i][j] == 0:
            break
        cost += room[i][j]

print(cost)
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();
		int m = sc.nextInt();

		int[][] room = new int[n][m];
		for(int i=0; i<n; i++)
			for(int j=0; j<m; j++)
				room[i][j] = sc.nextInt();

		int cost = 0;
		for(int j=0; j<m; j++) {
			for(int i=0; i<n; i++) {
				if (room[i][j] == 0)
					break;
				cost += room[i][j];
			}
		}

		System.out.println(cost);

	}

}
```


## C
```c
#include <stdio.h>

void main() {

    int n, m;
    scanf("%d %d", &n, &m);

    int room[n][m];
    for(int i=0; i<n; i++)
        for(int j=0; j<m; j++)
            scanf("%d", &room[i][j]);
    
    int cost = 0;
    for(int j=0; j<m; j++){
        for(int i=0; i<n; i++) {
            if (room[i][j] == 0)
                break;
            cost += room[i][j];
        }
    }

    printf("%d", cost);

}
```
