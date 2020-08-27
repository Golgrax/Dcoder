## Description
```
Take inputs,
and make window which moves 
	from left to right 1 index at a time...
Calculate sum in each window and findout max...
```


## Python
```python
length, window = map(int, input().split())
marksList = list( map(int, input().split()) )
maxMarks = 0

for i in range(length-window+1):
    SUM = sum( marksList[i:i+window] )
    if SUM > maxMarks:
        maxMarks = SUM

print(maxMarks)
```


## Java
```java
import java.util.Scanner;

public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int length = sc.nextInt();
		int window = sc.nextInt();
		int[] marksList = new int[length];

		for (int i=0; i<length; i++) { marksList[i] = sc.nextInt(); }

		int maxMarks = 0;
		for (int i=0; i<=length-window; i++) {
			int sum = 0;
			for (int j=i; j<i+window; j++)
				sum += marksList[j];
			if ( sum > maxMarks )
				maxMarks = sum;
		}

		System.out.println( maxMarks );

	}

}
```


## C
```c
#include <stdio.h>

void main() {

	int length, window, maxMarks=0;
	scanf("%d", &length);
	scanf("%d", &window);

	int markList[length];
	for(int i=0; i<length; i++) { scanf("%d",&markList[i]); }

	for (int i=0; i<=length-window; i++) {

		int sum = 0;
		for (int j=i; j<i+window; j++)
			sum += markList[j];
		
		if (sum > maxMarks) { maxMarks = sum; }

	}

	printf("%d\n", maxMarks);

}
```
