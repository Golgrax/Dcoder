## Description
```
Create histogram with the min, max value of each instance,
	by inserting and sorting values
	and adding +1 for min & -1 for min for height of histogram
Then make histogram continous by adding height of previous value,
Then get index of value of MAX HEIGHT
and print this VALUE and HEIGHT
```


## Python
```python
def addItem(lst, key, val):
    for i in range(len(lst)):
            if lst[i][0] == key:
                lst[i][1] += val
                return
            elif lst[i][0] > key:
                lst.insert(i, [key, val])
                return
    else:
        lst.append([key, val])

histogram_lst = []

for _ in range(int(input())):
    MIN, MAX = map(int, input().split())
    
    addItem(histogram_lst, MIN, 1)
    addItem(histogram_lst, MAX, -1)

for i in range(1, len(histogram_lst)):
    histogram_lst[i][1] += histogram_lst[i-1][1]
    
MAX = max(histogram_lst, key=lambda x: x[1])[1]
INDEX = 0
for i in range(len(histogram_lst)):
    if MAX == histogram_lst[i][1]:
        INDEX = i
        break

print(*histogram_lst[INDEX])
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void addItem(List<Integer[]> lst, int key, int val) {
		for (int i = 0; i < lst.size(); i++) {
			if (lst.get(i)[0] == key) {
				lst.get(i)[1] += val;
				return;
			} else if (lst.get(i)[0] > key) {
				lst.add(i, new Integer[]{key, val});
				return;
			}
		}
		lst.add(new Integer[]{key, val});
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();

		List<Integer[]> histogramList = new ArrayList<>();
		for(int i=0; i<n; i++) {
			int MIN = sc.nextInt();
			int MAX = sc.nextInt();

			addItem(histogramList, MIN, 1);
			addItem(histogramList, MAX, -1);
		}

		for (int i = 1; i < histogramList.size(); i++)
			histogramList.get(i)[1] += histogramList.get(i-1)[1];
		

		int MAX = histogramList.get(0)[1];
		int INDEX = 0;
		for (int j = 1; j < histogramList.size(); j++)
			if (histogramList.get(j)[1] > MAX){
				MAX = histogramList.get(j)[1];
				INDEX = j;
			}
		
		System.out.println(histogramList.get(INDEX)[0]+" "+histogramList.get(INDEX)[1]);
	}

}
```


## C
```c
#include <stdio.h>

void insert(int lst[20000][2], int len, int index, int key, int val) {
    for (int i = len; i >= index; i--) {
        lst[i+1][0] = lst[i][0];
        lst[i+1][1] = lst[i][1];
    }

    lst[index][0] = key;
    lst[index][1] = val;
}

int addItem(int lst[20000][2], int len, int key, int val) {
    for (int i = 0; i < len; i++) {
        if (lst[i][0] == key) {
            lst[i][1] += val;
            return 0;
        } else if (lst[i][0] > key) {
            insert(lst, len, i, key, val);
            return 1;
        }
    }
    lst[len][0] = key;
    lst[len][1] = val;
    return 1;    
}

void main() {

    int histogram_lst[20000][2];
    int len = 0;

    int n;
    scanf("%d", &n);

    for (int i = 0; i < n; i++) {
        int MIN, MAX;
        scanf("%d", &MIN);
        scanf("%d", &MAX);

        len += addItem(histogram_lst, len, MIN, 1);
        len += addItem(histogram_lst, len, MAX, -1);
    }
    
    for (int i = 1; i < len; i++) 
        histogram_lst[i][1] += histogram_lst[i-1][1];
    
    
    int MAX = histogram_lst[0][1];
    int INDEX = 0;
    for (int i = 1; i < len; i++)
        if (histogram_lst[i][1] > MAX) {
            MAX = histogram_lst[i][1];
            INDEX = i;
        }
    
    printf("%d %d\n", histogram_lst[INDEX][0], histogram_lst[INDEX][1]);

}
```
