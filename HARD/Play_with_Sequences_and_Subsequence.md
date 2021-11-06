## Description
```
Here we will be using recursive approch,
using,
	visited_arr ->  To save visit status of elements
	output_arr  ->  To save increasing sequence list from that element to end

Now recursive loop takes followinf parameter
	index        ->  Index of current element to find increasing sequence
	size         ->  Length of arr
	arr          ->  Elements arr
	visited_arr  ->  Arr saves visited status
	output_arr   ->  Arr of increasing sequence list for each element

If check if element is visited, if it is then end loop
	set MAX variable to save pointer to largest size of increasing sequence after current element
	loop j from index+1 to end
		generate increasing sequence list of each element at j using recursive call
		check if len of list at j in larget then at MAX,
			if its then update MAX
	append current element(arr[index]) in start and save it at output_arr[index] position
	update visited status at index.

now loop through output list and print first list maximum size
```


## Python
```python
def dfs(index, end, lst, visited_lst, output_lst):
    if not visited_lst[index]:
        curr = []
        for j in range(index+1, end):
            if lst[j] > lst[index]:
                res = dfs(j, end, lst, visited_lst, output_lst)
                if len(res) > len(curr):
                    curr = res
        output_lst[index] = [lst[index]]+curr
        visited_lst[index] = True
    return output_lst[index]




n = int(input())
lst = list(map(int, input().split()))

visited_lst = [False]*n
output_lst = [[] for i in range(n)]

maxLen_index = 0
for index in range(n):
    dfs(index, n, lst, visited_lst, output_lst)

    if len(output_lst[index]) > len(output_lst[maxLen_index]):
        maxLen_index = index

print(*output_lst[maxLen_index])
```


## Java
```java
import java.util.*;
public class Dcoder {

	private static List<Integer> setList(List<List<Integer>> outpuList, int element, int index) {
		List<Integer> to = 
			index == -1
				? new ArrayList<>()
				: new ArrayList<>(outpuList.get(index));
		to.add(0, element);
		return to;

	}

	private static void dfs(int index, int size, int arr[], boolean visited_arr[], List<List<Integer>> outpuList) {
		if ( !visited_arr[index] ) {

			int maxLen = 0;
			int maxLen_index = -1;

			for (int j = index + 1; j < size; j++) 
				if (arr[j] > arr[index]) {
					dfs(j, size, arr, visited_arr, outpuList);

					if (outpuList.get(j).size() > maxLen) {
						maxLen_index = j;
						maxLen = outpuList.get(j).size();
					}
				}

			outpuList.set( index,  setList(outpuList, arr[index], maxLen_index) );
			visited_arr[index] = true;
		}
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();

		int[] arr = new int[n];
		for (int i = 0; i < n; i++)
			arr[i] = sc.nextInt();
		
		boolean[] visited_arr = new boolean[n];
		for (int i = 0; i < n; i++) 
			visited_arr[i] = false;
		
		List<List<Integer>> output_list = new ArrayList<>();
		for (int i = 0; i < n; i++) 
			output_list.add(new ArrayList<>());
			
		int maxLen_index = 0;
		for (int index = 0; index < n; index++) {
			
			dfs(index, n, arr, visited_arr, output_list);

			if (output_list.get(index).size() > output_list.get(maxLen_index).size())
				maxLen_index = index;

		}

		for (int i = 0; i < output_list.get(maxLen_index).size(); i++) {
			System.out.printf("%d ", output_list.get(maxLen_index).get(i));
		}

	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

int *saveArr(int ele, int** output_arr, int index) {
    int *from;
    int size = index == -1 ? 0 : output_arr[index][0];
    
    if (size)
        from = output_arr[index];
    int *to = (int *)malloc((size + 2) * sizeof(int));

    to[0] = size + 1;
    to[1] = ele;
    for (int i = 0; i < size; i++)
        to[i + 2] = from[i + 1];

    return to;
}

void dfs(int index, int size, int *arr, int *visited_arr, int **output_arr) {
    if ( !visited_arr[index] ) {

        int maxArr_index = -1;
        int len = 0;

        for (int j = index+1; j < size; j++) {
            if (arr[j] > arr[index]) {
                dfs(j, size, arr, visited_arr, output_arr);

                if (output_arr[j][0] > len) {
                    maxArr_index = j;
                    len = output_arr[j][0];
                }
            }

        }

        output_arr[index] = saveArr(arr[index], output_arr, maxArr_index);
        visited_arr[index] = 1;

    }
}

void main() {

    int n;
    scanf("%d", &n);

    int *arr = (int *)malloc(n*sizeof(int));
    for(int i = 0; i < n; i++)
        scanf("%d", &arr[i]);

    int *visited_arr = (int *)malloc(n*sizeof(int));
    for (int i = 0; i < n; i++)
        visited_arr[i] = 0;
    
    int **output_arr = (int **)malloc(n*sizeof(int*));

    int maxLen_index = 0;
    for (int index = 0; index < n; index++) {
        dfs(index, n, arr, visited_arr, output_arr);
        
        if (output_arr[index][0] > output_arr[maxLen_index][0])
            maxLen_index = index;
    }
    
    for (int i = 0; i < output_arr[maxLen_index][0]; i++)
        printf("%d ", output_arr[maxLen_index][i+1]);

    free(arr);
    free(visited_arr);
    for (int i = 0; i < n; i++)
        free(output_arr[i]);
    free(output_arr);

}
```
