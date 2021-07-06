## Description
```
Get all inputs and save cost & cashback in 2d array
	then sort them on the basis of cashback in desending order
And Initialize the initalMoney & currentMoney to first cost & cashback respactively....
the traverse from next element and check
	if currentMoney < currentCost (Means we have to take more money in inital)
		then -> initalMoney = currentCost - currentMoney
		and now we have 0 money left i.e. currentMoney = 0
	else
		then remove cost from current money
			currentMoney =  currentMoney -  currentCost
	Now add cashback amt
		currentMoney += cashback
lastly print initalMoney
```


## Python
```python

lst = []

for _ in range(int(input())):
    cost, cashBack = map(int, input().split())
    i = 0
    while i < len(lst) and cashBack < lst[i][1]:
        i += 1
    lst.insert(i, [cost,cashBack])
    
    
initialMoney, currentMoney = lst[0]
for cost,cashBack in lst[1:]:
    if currentMoney < cost:
        initialMoney += cost-currentMoney
        currentMoney = 0
    else:
        currentMoney -= cost
    currentMoney += cashBack

print(initialMoney)
```


## Java
```java
import java.util.Scanner;
import java.util.Comparator;
import java.util.Arrays;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();

		int[][] lst = new int[n][2];
		for (int i = 0; i < n; i++) {
			lst[i][0] = sc.nextInt();
			lst[i][1] = sc.nextInt();
		}

		Arrays.sort(lst, new Comparator<int[]>(){
			@Override
			public int compare(int[] arg0, int[] arg1) {
				return arg1[1] - arg0[1];
			}
		});

		int initialMoney = lst[0][0];
		int currentMoney = lst[0][1];
		for(int i=1; i<n; i++) {
			if (currentMoney < lst[i][0]) {
				initialMoney += lst[i][0] - currentMoney;
				currentMoney = 0;
			} else {
				currentMoney -= lst[i][0];
			}
			currentMoney += lst[i][1];
		}

		System.out.println(initialMoney);
		sc.close();
	}

}
```


## C
```c
#include <stdio.h>

void main() {



}
#include <stdio.h>
#include <stdlib.h>

int compare ( const void *pa, const void *pb ) {
    const int *a = *(const int **)pa;
    const int *b = *(const int **)pb;
    return b[1] - a[1];
}

void main() {

    int n;
    int **lst;
    
    scanf("%d", &n);

    lst = (int **)malloc(sizeof(int *)*n);
    for(int i=0; i<n; i++) {
        lst[i] = (int *)malloc(sizeof(int *)*2);
        scanf("%d %d", &lst[i][0], &lst[i][1]);
    }

    qsort(lst, n, sizeof(lst[0]), compare);

    int initialMoney = lst[0][0];
    int currentMoney = lst[0][1];
    for(int i=1; i<n; i++) {
        if (currentMoney < lst[i][0]) {
            initialMoney += lst[i][0] - currentMoney;
            currentMoney = 0;
        } else {
            currentMoney -= lst[i][0];
        }
        currentMoney += lst[i][1];
    }

    printf("%d\n", initialMoney);
}
```
