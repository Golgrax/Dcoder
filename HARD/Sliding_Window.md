## Description
```
```


## Python
```python
for _ in range(int(input())):
    n, k = map(int, input().split())
    l = list(map(int, input().split()))
    
    for i in range(k, n+1):
        print( len(set(l[i-k:i])), end="\n" if i == n else " " )
```


## Java
```java
import java.util.*;
public class Dcoder {

	private static void addNum(int count_arr[][], int num) {
		int index = -1;

		for (int i = 0; i < count_arr.length; i++)
			if (num == count_arr[i][0]) {
				index = i;
				break;
			}

		if (index == -1)
			for (int i = 0; i < count_arr.length; i++)
				if (count_arr[i][0] == 0) {
					index = i;
					break;
				}
		
		count_arr[index][0] = num;
		count_arr[index][1]++;
	}

	private static void deleteNum(int count_arr[][], int num) {
		int index = -1;

		for (int i = 0; i < count_arr.length; i++)
			if (num == count_arr[i][0]) {
				index = i;
				break;
			}
		
		count_arr[index][1]--;
		if (count_arr[index][1] == 0)
			count_arr[index][0] = 0;
	}

	private static int count_unique(int count_arr[][]) {
		int unique = 0;

		for (int i = 0; i < count_arr.length; i++)
			if (count_arr[i][0] != 0)
				unique++;

		return unique;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int T =sc.nextInt();
		for (int t = 0; t < T; t++) {
			
			int n = sc.nextInt();
			int k = sc.nextInt();

			int[] arr = new int[n];
			for (int i = 0; i < n; i++) 
				arr[i] = sc.nextInt();

			int[][] count_arr = new int[k][2];
			for (int i = 0; i < k; i++)
				count_arr[i][0] = count_arr[i][1] = 0;

			int[] output_arr = new int[n - k + 1];
			int pos = 0;

			for (int i = 0; i < k; i++)
				addNum(count_arr, arr[i]);
			output_arr[pos++] = count_unique(count_arr);
			
			for (int i = k; i < n; i++) {
				addNum(count_arr, arr[i]);
				deleteNum(count_arr, arr[i - k]);
				output_arr[pos++] = count_unique(count_arr);
			}

			for (int i = 0; i < pos; i++) {
				System.out.printf(i < pos-1 ? "%d " : "%d\n", output_arr[i]);
			}

		}

	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>


void addNum(int **count_arr, int size, int num) {
	int index = -1;

	for (int i = 0; i < size; i++)
		if (num == count_arr[i][0]) {
			index = i;
            break;
        }

	if (index == -1)
		for (int i = 0; i < size; i++)
			if (count_arr[i][0] == 0) {
				index = i;
                break;
            }
		
	count_arr[index][0] = num;
	count_arr[index][1]++;
}

void deleteNum(int **count_arr, int size, int num) {
	int index = -1;

	for (int i = 0; i < size; i++)
		if (num == count_arr[i][0]) {
			index = i;
            break;
        }
		
	count_arr[index][1]--;
	if (count_arr[index][1] == 0)
		count_arr[index][0] = 0;
}

int count_unique(int **count_arr, int size) {
	int unique = 0;

	for (int i = 0; i < size; i++)
		if (count_arr[i][0] != 0)
			unique++;

	return unique;
}


void main() {

    int T;
    scanf("%d", &T);

    for (int t = 0; t < T; t++) {
        
        int n, k;
        scanf("%d %d", &n, &k);

        int *arr = (int *)malloc( n * sizeof(int) );
        for (int i = 0; i < n; i++)
            scanf("%d", &arr[i]);

        int **count_arr = (int **)malloc( (k) * sizeof(int *) );
        for (int i = 0; i < k; i++) {
            count_arr[i] = (int *)malloc( (2) * sizeof(int) );
            count_arr[i][0] = count_arr[i][1] = 0;
        }

        int pos = 0;
        int size = n - k + 1;
        int *output_arr = (int *)malloc(size * sizeof(int));

        for (int i = 0; i < k; i++)
            addNum(count_arr, k, arr[i]);
        output_arr[pos++] = count_unique(count_arr, k);

        for (int i = k; i < n; i++) {
            addNum(count_arr, k, arr[i]);
            deleteNum(count_arr, k, arr[i - k]);
            output_arr[pos++] = count_unique(count_arr, k);
        }
        
        for (int i = 0; i < size; i++)
            printf(i != size-1 ? "%d " : "%d\n", output_arr[i]);

    }

}
```
