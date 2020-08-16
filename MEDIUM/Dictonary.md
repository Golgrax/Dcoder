## Description
```
Take input string, and split at space
make a key-value pair.....
During testing,
	print value using the index of the key...
```


## Python
```python
length = int( input() )
d = {}
for i in range( length ):
	k = input().split()
	d[ k[0] ] = int(k[1])

test = int( input() )
t = [ input() for i in range(test) ]

for key in t:
	print(d[key])
```


## Java
```java
import java.util.ArrayList;
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		ArrayList<String> key = new ArrayList<>();
		ArrayList<Integer> value = new ArrayList<>();

		int length = sc.nextInt();
		sc.nextLine();
		for ( int i=0; i<length; i++ ) {
			String[] input = sc.nextLine().split(" ");
			key.add( input[0] );
			value.add( Integer.parseInt(input[1]) );
		}

		int test = sc.nextInt();
		sc.nextLine();
		for (int i=0; i<test; i++) {
			String t = sc.nextLine();
			System.out.println( value.get( key.indexOf(t) ) );
		}

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void main() {

	char key[20][20];
	int value[20];

	int length;
	scanf("%d ", &length);
	for (int i=0; i<length; i++) {
		char temp[20];
		scanf("%s", temp);
		strcpy( key[i], temp );
		scanf("%s", temp);
		value[i] = atoi(temp);
	}

	int test;
	scanf("%d ", &test);
	for (int i=0; i<test; i++) {
		char temp[20];
		scanf("%s", temp);
		for (int j=0; j<length; j++) {
			if ( !strcmp( key[j], temp ) ) {
				printf("%d\n", value[j]);
			}
		}
	}
}
```
