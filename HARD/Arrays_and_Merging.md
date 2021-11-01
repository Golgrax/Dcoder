## Description
```
As both arrays are already sorted and index of required element is given...
We just have to traverse both array is assending order till given index.
```


## Python
```python
n = int(input())
l1 = list(map(int, input().split()))
m = int(input())
l2 = list(map(int, input().split()))
x = int(input())

i, j, k = 0, 0, 0
select_first = True

while k < x and (i < n or j < m):
    if j == m or (i < n and l1[i] <= l2[j]):
        i += 1
        select_first = True
    elif j < m:
        j += 1
        select_first = False
    k += 1
    
print(l1[i-1] if select_first else l2[j-1])
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();
		int[] arr1 = new int[n];
		for (int i = 0; i < n; i++)
			arr1[i] = sc.nextInt();
		
		int m = sc.nextInt();
		int[] arr2 = new int[m];
		for (int i = 0; i < m; i++)
			arr2[i] = sc.nextInt();

		int x = sc.nextInt();

		int i, j, k;
		i = j = k = 0;
		boolean select_first = true;

		while (k < x && (i < n || j < m)) {
			if (j == m || (i < n && arr1[i] <= arr2[j])) {
				i++;
				select_first = true;
			} else if (j < m) {
				j++;
				select_first = false;
			}
			k++;
		}
		
		System.out.println(select_first ? arr1[i-1] : arr2[j-1]);


	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

void main() {

    int n;
    scanf("%d", &n);
    int *arr1 = (int *)malloc(n * sizeof(int));
    for (int i = 0; i < n; i++)
        scanf("%d", &arr1[i]);
    
    int m;
    scanf("%d", &m);
    int *arr2 = (int *)malloc(m * sizeof(int));
    for (int i = 0; i < m; i++)
        scanf("%d", &arr2[i]);

    int x;
    scanf("%d", &x);

    int i, j, k;
    i = j = k = 0;
    int select_first = 1;

    while (k < x && (i < n || j < m)) {
        if (j == m || (i < n && arr1[i] <= arr2[j])) {
            i++;
            select_first = 1;
        } else if (j < m) {
            j++;
            select_first = 0;
        }
        k++;
    }
    
    printf("%d", select_first ? arr1[i-1] : arr2[j-1]);

    free(arr1);
    free(arr2);

}
```
