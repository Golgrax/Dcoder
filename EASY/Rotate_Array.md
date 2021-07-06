## Description
```
Just loop over the array from location (n-k) till n times
	and print value using index arr[(i+n-k)%n]
```


## Python
```python
n, r = map(int, input().split())
l = list(map(int, input().split()))

print(*(l[-1*r:] + l[:-1*r]))
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
        int n, k;
        n = sc.nextInt();
        k = sc.nextInt();
    
        int[] arr = new int[n];
        for(int i=0; i<n; i++)
            arr[i] = sc.nextInt();
    
        for(int i=0; i<n; i++)
            System.out.print(arr[(i+n-k)%n]+" ");

		sc.close();
	}

}
```


## C
```c
#include <stdio.h>

void main() {

    int n, k;
    scanf("%d %d", &n, &k);
    
    int arr[n];
    for(int i=0; i<n; i++)
        scanf("%d", &arr[i]);
    
    for(int i=0; i<n; i++) {
        printf("%d ", arr[(i+n-k)%n]);
    }

}
```
