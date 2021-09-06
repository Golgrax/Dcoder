## Description
```
```


## Python
```python
n = int(input())
l = list(map(int, input().split()))

MAX = 0
I, J = 0, 0
SUM = 0
i, j = 0, 0
for v in l:
    j += 1
    if v < 0:
        if MAX < SUM:
            MAX = SUM
            I, J = i, j-1
        elif MAX == SUM and J-I < j-i:
            I, J = i, j-1
        i = j
        SUM = 0
    else:
        SUM += v

if MAX < SUM:
    I, J = i, j
elif MAX == SUM and J-I < j-i:
    I, J = i, j
        
print(*l[I:J])
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();

		int[] arr = new int[n];
        for(int k=0; k<n; k++)
            arr[k] = sc.nextInt();

		int MAX = 0;
		int I = 0, J = 0;
		int SUM = 0;
		int i = 0, j = 0;
		for(int k = 0; k<n; k++) {
            
			j++;
			if (arr[k] < 0) {
				if (MAX < SUM ) {
					MAX = SUM;
					I = i;
					J = j-1;
				} else if (MAX == SUM && J-I < j-i) {
					I = i;
					J = j-1;
				}
				SUM = 0;
				i = j;
			} else {
				SUM += arr[k];
			}
		}
		
		if (MAX < SUM) {
			I = i;
			J = j;
		} else if (MAX == SUM && J-I < j-i) {
			I = i;
			J = j;
		}

		for(int k=I; k<J; k++){
			System.out.print(arr[k]);
			if (k < J-1)
				System.out.print(" ");
		}
	}

}
```


## C
```c
#include <stdio.h>

void main() {

    int n;
    scanf("%d", &n);

    int arr[100];
    for(int k=0; k<n; k++)
        scanf("%d", &arr[k]);

    int MAX = 0, I = 0, J = 0;
    int SUM = 0, i = 0, j = 0;
    for(int k=0; k<n; k++) {
        j++;
        if (arr[k] < 0) {
            if (MAX < SUM) {
                MAX = SUM;
                I = i;
                J = j-1;
            } else if (MAX == SUM && J-I < j-i) {
                I = i;
                J = j-1;
            }
            i  = j;
            SUM = 0; 
        } else {
            SUM += arr[k];
        }
    }

    if (MAX < SUM) {
        I = i;
        J = j;
    } else if (MAX == SUM  && J-I < j-i) {
        I = i;
        J = j;
    }

    for(int k=I; k<J; k++) {
        printf("%d ", arr[k]);
    }

}
```
