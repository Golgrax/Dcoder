## Description
```
Take input list of password,
	then make a 1 string reverse and
	check if this reverrse is present in array or not..
Follow this process with whole list of string...
And exit onces reverseed is found...
```


## Python
```python

length = int( input() )

l = [input() for i in range(length)]

for i in l:
    if i[::-1] in l:
        print(len(i), i[len(i)//2])
        exit(0)
```


## Java
```java
import java.util.Scanner;

public class Dcoder {

	private static String reverse(String s) {

		StringBuilder strbld = new StringBuilder(s);
		return String.valueOf( strbld.reverse() );

	}

	public static void main(String[] args) {

		Scanner sc =new Scanner( System.in );

		int length = sc.nextInt();
		String[] strArray = new String[ length ];
		sc.nextLine();

		for (int i=0; i<length; i++) { strArray[i] = sc.nextLine(); }

		for (int i=0; i<length; i++) {
			String rev = reverse( strArray[i] );
			for (int j=0; j<length; j++) {
				if ( strArray[j].compareTo(rev) == 0 ) {
					System.out.println( rev.length()+" "+rev.charAt( rev.length()/2 ) );
					System.exit(0);
				}
			}
		}

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char *reverse(char *str) {

	char *temp = (char*)malloc( sizeof(char)*strlen(str) );

	int i = 0;
	while ( i < strlen(str) ) {
		*(temp+i) = *(str+strlen(str)-2-i);
		i++;
	}
	*(temp+i) = '\n';

	return temp;

}

int cmp(char *a, char *b) {
	for (int i=0; i<strlen(a)-1; i++) {
		if ( a[i] != b[i] ) {
			return 0;
		}
	}
	return 1;
}

void main() {

	int length;
	scanf("%d ",&length);

	char strArray[length][20];
	for (int i=0; i<length; i++) { fgets(strArray[i],100,stdin); }

	for (int i=0; i<length; i++) {
		char *rev= reverse( strArray[i] );
		for (int j=0; j<length; j++) {
			if ( cmp(rev, strArray[j]) ) {
				printf("%ld %c\n", strlen(rev), strArray[j][strlen(rev)/2]);
				exit(0);
			}
		}
	}

}
```
