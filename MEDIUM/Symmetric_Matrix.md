## Description
```
Take input in 2D array,
	A<sub>00</sub> A<sub>01</sub> A<sub>02</sub>
	A<sub>10</sub> A<sub>11</sub> A<sub>12</sub>
	A<sub>20</sub> A<sub>21</sub> A<sub>22</sub>
A<sub>ij</sub>
then loop nested loop from i=1, till n & j=i till n
because diagonal values dosn't matter,
```


## Python
```python
lst = []

for _ in range(int(input())):
    lst.append(list(map(int,input().split())))
    
    
valid = True
for i in range(1,len(lst)):
    for j in range(i,len(lst)):
        if lst[i][j] != lst[j][i]:
            valid = False

print("YES" if valid else "NO")
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();

		int[][] lst = new int[n][n];
		for(int i=0; i<n; i++)
			for(int j=0; j<n; j++)
				lst[i][j] = sc.nextInt();

		boolean valid = true;
		for (int i = 1; i < n; i++)
			for (int j = i; j < n; j++)
				if (lst[i][j] != lst[j][i])
					valid = false;

		System.out.println(valid ? "YES" : "NO");

	}

}
```


## C
```c
#include <stdio.h>

typedef enum { false, true } bool;

void main() {

    int n;
    scanf("%d", &n);

    int lst[100][100];
    for(int i=0; i<n; i++)
        for(int j=0; j<n; j++)
            scanf("%d", &lst[i][j]);

    bool valid = true;
	for (int i = 1; i < n; i++)
		for (int j = i; j < n; j++)
			if (lst[i][j] != lst[j][i])
				valid = false;

	printf(valid ? "YES\n" : "NO\n");

}
```
