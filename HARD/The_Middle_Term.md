## Description
```
For each testcase, get sum of number form 1st index to end....
	then loop from 1st index to n-1 to balance each side.
```


## Python
```python
for _ in range(int(input())):
    n = int(input())
    l = list(map(int, input().split()))
    
    l_sum = 0
    r_sum = sum(l[1:])

    for i in range(1, n-1):
        if l_sum == r_sum:
            break
        l_sum += l[i-1]
        r_sum -= l[i]

    print("Yes" if l_sum == r_sum else "No")
```


## Java
```java
import java.util.*;
public class Dcoder {


	private static int arrSum(int arr[], int start, int end) {
		int sum = 0;
		for(int i=start; i<end; i++)
			sum += arr[i];
		return sum;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int T = sc.nextInt();
		for(int t=0; t<T; t++) {

			int n = sc.nextInt();

			int[] arr = new int[n];
			for (int i = 0; i < n; i++)
				arr[i] = sc.nextInt();
			
			int l_sum = 0;
			int r_sum = arrSum(arr, 1, n);

			for (int i = 1; i < n-1 && l_sum != r_sum; i++) {
				l_sum += arr[i-1];
				r_sum -= arr[i];
			}

			System.out.println(l_sum == r_sum ? "Yes" : "No");

		}

	}

}
```


## C
```c
#include <stdio.h>

int arrSum(int arr[10000], int start, int end) {
    int sum = 0;
    for(int i=start; i<end; i++)
        sum += arr[i];
    return sum;
}

void main() {

    int T;
    scanf("%d", &T);

    for(int t=0; t<T; t++) {
        int n;
        scanf("%d", &n);

        int arr[10000];
        for (int i = 0; i < n; i++)
            scanf("%d", &arr[i]);
        
        int l_sum = 0;
        int r_sum = arrSum(arr, 1, n);

        for (int i = 1; i < n-1 && l_sum != r_sum; i++) {
            l_sum += arr[i-1];
            r_sum -= arr[i];
        }

        printf(l_sum == r_sum ? "Yes\n" : "No\n");
        
    }

}
```
