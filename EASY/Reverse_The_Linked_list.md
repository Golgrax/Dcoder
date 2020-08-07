## Description
```
Take input and store in linkedlist,
    no need to create actual linkedlist, an array will work.....
Print in reverse order, while avoiding last node.
```
## Python
```python
linkedList = list ( map(int, input().split()) )
linkedList.remove(-1)

print(*linkedList[::-1])
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		LinkedList<Integer> inputs = new LinkedList<>();

		while (true) {
			int temp = sc.nextInt();
			if (temp == -1) { break; }
			inputs.add(temp);
		}

		for (int i=inputs.size()-1; i>=0; i--) {
			System.out.print( (i==0) ? inputs.get(i)+"\n" : inputs.get(i)+" " );
		}
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int linkedList[100];
	int temp,i;

	while (scanf("%d", &temp), linkedList[i++]=temp, temp!=-1){}
	
	for (i=i-2; i>=0; i--) {
		printf( (i==0) ? "%d\n" : "%d " , linkedList[i]);
	}

}

```