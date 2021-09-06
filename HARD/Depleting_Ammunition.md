## Description
```
Get input, and sort building indexes in ascending order,
Now,
	A bomb must be dropped on building,
	and we must maximize no. of building from current build to distance in both side.

	To do that we must find
		left most building in range(low)
		and poin of impact(drop)
	start iterating from 1 to n,
		and drop point until current index > distance + low point
			and if current index > distance + drop point
				then increase bomb count
		else,
			drop = current index
```


## Python
```python


nBuildings, distance = map(int, input().split())
buildings = list(map(int, input().split()))

if nBuildings == 1:
    print(1)
elif nBuildings == 2:
    print(2 if abs(buildings[1]-buildings[0]) > distance else 1)
else:
    buildings.sort()
    low = buildings[0]
    drop = buildings[0]
    bombs = 1
    for i in range(1, nBuildings):
        if buildings[i] > low + distance:
            if buildings[i] > drop + distance:
                drop = low = buildings[i]
                bombs += 1
        else:
            drop = buildings[i]
    print(bombs)
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int nBuildings = sc.nextInt();
		int distance = sc.nextInt();
		
		int[] building = new int[nBuildings];
		for(int i = 0; i<nBuildings; i++) 
			building[i] = sc.nextInt();
		
		Arrays.sort(building);

		int bombs = 1;
		int drop = building[0];
		int low = building[0];

		for(int i = 1; i<nBuildings; i++) {
			if (building[i] > low + distance) {
				if (building[i] > drop + distance) {
					low = drop = building[i];
					bombs++;
				}
			} else {
				drop = building[i];
			}
		}

		System.out.println(bombs);
	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

void main() {

    int nBuildings, distance;
    scanf("%d", &nBuildings);
    scanf("%d", &distance);

    int *building = (int *)malloc(nBuildings * sizeof(int));
    for(int i=0; i<nBuildings; i++)
        scanf("%d", &building[i]);

    for(int i=1; i<nBuildings; i++) {
        int temp = building[i];
        int j = i;
        while (j > 0 && temp < building[j-1]) {
            building[j] = building[j-1];
            j--;
        }
        building[j] = temp;
    }

    int bombs = 1;
    int low = building[0];
    int drop = building[0];
    for(int i=1; i<nBuildings; i++) {
        if (building[i] > low + distance) {
            if (building[i] > drop + distance) {
                drop = low = building[i];
                bombs++;
            }
        } else {
            drop = building[i];
        }
    }

    printf("%d", bombs);

    free(building);

}
```
