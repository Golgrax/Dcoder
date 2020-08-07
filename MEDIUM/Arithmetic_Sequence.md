## Description
```
Take input test, length, array..
Create an difference(diff) array of
    (length-1) size...
put -> diff[i] = array[i+1]-array[i], for i to length-1
Make a while loop run from i=0 to length-1,
    and break if diff[i] != diff[i+1]
as diff[i] points to arr[i+1]
then
	if i > 0 (Not left most element)
		if diff[i-1] == diff[i]  // if a[i+2] is odd
			print arr[j+2]
	    else
			print arr[j+1]      // if a[i+1] is odd
	else    (Left most element, then move ptr forward)
		if diff[i+1] == diff[i+2]   // If a[i] is odd
			print arr[j]
		else                       // if a[i+1] is odd
			print arr[i+1]
```
## Python
```python
test = int(input())

for t in range( test ):
	length = int(input())
	arr = list( map(int, input().split()) )

	diff = [0]*( len(arr)-1 )

	for i in range( len(arr)-1 ):
		diff[i] = arr[i+1] - arr[i]

	i = 0
	while i < len(diff)-1:
		if diff[i]!=diff[i+1]:
			break
		i += 1
	
	if i > 0:
		if diff[i-1] == diff[i]:
			print( arr[i+2] )
		else:
			print( arr[i+1] )
	else:
		if diff[i+1] == diff[i+2]:
			print( arr[i] )
		else:
			print( arr[i+1] )
```
## Java
```java
import java.util.Scanner;

public class zztemp {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner( System.in );

		int test = sc.nextInt();

		for (int i=0; i<test; i++) {

			int length = sc.nextInt();
			int[] arr = new int[ length ];
			int[] diff = new int[ length-1 ];

			for (int j=0; j<length; j++) {
				arr[j] = sc.nextInt();
				if ( j > 0 ) {
					diff[j-1] = arr[j] - arr[j-1];
				}
			}

			int j = 0;
			while ( j < length-1 ) {
				if ( diff[j] != diff[j+1] ) { break; }
				j++;
			}

			if ( j > 0 ) {
				if ( diff[j-1] == diff[j] ) {
					System.out.println( arr[j+2] );
				} else {
					System.out.println( arr[j+1] );
				}
			} else {
				if ( diff[j+1] == diff[j+2] ) {
					System.out.println( arr[j] );
				} else {
					System.out.println( arr[j+1] );
				}
			}

		}

	}
	
}
```
## C
```c
#include <stdio.h>

void main() {

	int test;
	scanf("%d", &test);

	for (int i=0; i<test; i++) {

		int length;
		scanf("%d", &length);

		int arr[length];
		int diff[length-1];

		for (int j=0; j<length; j++) {
			scanf("%d", &arr[j]);
			if ( j > 0 ) {
				diff[j-1] = arr[j] - arr[j-1];
			}
		}

		int j = 0;
		while ( j < length-1 ) {
			if ( diff[j] != diff[j+1] ) break;
			j++;
		}

		if ( j > 0 ) {
			if ( diff[j-1] == diff[j] ) {
				printf("%d\n", arr[j+2] );
			} else {
				printf("%d\n", arr[j+1] );
			}
		} else {
			if ( diff[j+1] == diff[j+2] ) {
				printf("%d\n", arr[j] );
			} else {
				printf("%d\n", arr[j+1] );
			}
		}

	}

}

```