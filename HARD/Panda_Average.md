## Description
```
Get sum of the array,
And initialize 2 varaible LHS & RHS
And apply sliding window concept,
	where LHS -> left average
	and   RHS -> right average
	and min will be difference in average
```


## Python
```python
for _ in range(int(input())):
    n = int(input())
    lst = list(map(int, input().split()))
    LHS = lst[0]
    RHS = sum(lst[1:])
    MIN = abs(LHS-RHS/(n-1))
    for i in range(1, n-1):
        LHS += lst[i]
        RHS -= lst[i]
        MIN = min(MIN, abs(LHS/(i+1)-RHS/(n-i-1)))
    
    print(f"{MIN:.2f}")
```


## Java
```java
import java.util.Arrays;
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		int n = sc.nextInt();
		for (int i = 0; i < n; i++) {
			int len = sc.nextInt();
			int[] lst = new int[len];
			for (int j = 0; j < len; j++) {
				lst[j] = sc.nextInt();
			}

			int LHS = lst[0];
			int RHS = Arrays.stream(lst).sum() - lst[0];
			double MIN = Math.abs(LHS - RHS/(len-1.0));
			for (int j = 1; j < len-1; j++) {
				LHS += lst[j];
				RHS -= lst[j];
				MIN = Math.min(MIN, Math.abs(LHS/(j+1.0) - RHS/(len-j-1.0)));
			}

			System.out.printf("%.2f\n", MIN);
		}
	}

}
```


## C
```c
#include <stdio.h>

float MIN(float a, float b) {
    return a < b ? a : b;
}

float ABS(float a) {
    return a < 0 ? -1*a : a;
}

void main() {

    int n;
    scanf("%d", &n);

    for(int i=0; i<n; i++) {
        int lst[1000];
        int len;

        scanf("%d", &len);
        for(int j=0; j<len; j++)
            scanf("%d", &lst[j]);

        int sum = 0;
        for(int j=0; j<len; j++)
            sum += lst[j];

        int LHS = lst[0];
        int RHS = sum - lst[0];
        float min = ABS(LHS - RHS/(len-1.0));
		for (int j = 1; j < len-1; j++) {
			LHS += lst[j];
			RHS -= lst[j];
			min = MIN(min, ABS(LHS/(j+1.0) - RHS/(len-j-1.0)));
		}

		printf("%.2f\n", min);
    }

}
```
