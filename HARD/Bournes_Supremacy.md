## Description
```
Take all the inputs,
and make a status variable found as false,
and assume -1 indicate point is visited
	so, visiting it again means we will never reach to destination
then loop through arr,
	with starting index as s-1
	and condition arr[i] != -1
	and in loop check if destination is reached then set found variable and break loop
After breaking, print Yes if found is set else No
```


## Python
```python
for _ in range(int(input())):
    n = int(input())
    l = list(map(int, input().split()))
    s, d = map(int, input().split())
    i = s - 1
    while l[i] != False:
        if l[i] == d:
            print("Yes")
            break
        l[i], i = False, l[i] - 1
    else:
        print("No")
```


## Java
```java
import java.util.*;

class Dcoder
{  
    public static void main(String args[])
    {  
        Scanner sc = new Scanner(System.in);
        
        int T = sc.nextInt();
        for(int t=0; t<T; t++) {
            int n = sc.nextInt();

            int[] arr = new int[n];
            for(int i=0; i<n; i++)
                arr[i] = sc.nextInt();

            int s = sc.nextInt();
            int d = sc.nextInt();

            int i = s - 1;
            boolean found = false;
            while(arr[i] != -1) {
                if (arr[i] == d) {
                    System.out.println("Yes");
                    found = true;
                    break;
                }
                int temp = arr[i] - 1;
                arr[i] = -1;
                i = temp;
            }

            if (!found)
                System.out.println("No");
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
    for(int t=0; t<T; t++) {

        int n;
        scanf("%d", &n);

        int arr[1000];
        for(int i=0; i<n; i++)
            scanf("%d", &arr[i]);

        int s, d;
        scanf("%d", &s);
        scanf("%d", &d);

        int i = s - 1;
        int found = 0;
        while (arr[i] != -1) {
            if (arr[i] == d) {
                printf("Yes\n");
                found = 1;
                break;
            }
            int temp = arr[i] - 1;
            arr[i] = -1;
            i = temp;
        }

        if (!found)
            printf("No\n");

    }
}
```
