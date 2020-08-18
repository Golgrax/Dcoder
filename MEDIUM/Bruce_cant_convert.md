## Description
```
Make a list of value range from 0-9 then A-F
Then take input num & base,
The output string S is reverse of string O which is result of the mode operation on number with base....

The operation is as follow,
	while num != 0
		O += list[ num%base ]
		num = num/base   ..(Integer Division)
	reverse O and print it...
```


## Python
```python
numberList = ["0", "1", "2", "3", "4", "5", "6","7", "8", "9", "A", "B", "C", "D", "E", "F"]

test = int(input())
for i in range(test):
	num, base = map(int, input().split())
	O = ""

	while num:
		O += numberList[num%base]
		num //= base

	print(O[::-1])
```


## Java
```java
import java.util.Scanner;
public class template {

	private static String rev( String s ) {

		StringBuilder sb = new StringBuilder(s);
		return sb.reverse().toString();

	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		String[] numberLsit = {"0", "1", "2", "3", "4", "5", "6","7", "8", "9", "A", "B", "C", "D", "E", "F"};
		
		int test = sc.nextInt();
		sc.nextLine();
		for (int i=0; i<test; i++) {

			String[] temp = sc.nextLine().split(" ");
			int num = Integer.parseInt(temp[0]);
			int base = Integer.parseInt(temp[1]);
			String o = "";

			while ( num != 0 ) {
				o += numberLsit[ num%base];
				num /= base;
			}

			System.out.println( rev(o) );

		}

	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

void main() {

	char numberList[16] = {'0', '1', '2', '3', '4', '5', '6','7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

	int test;
	scanf("%d ", &test);
	for (int i=0; i<test; i++) {

		int num, base;
		char temp[10];
		scanf("%s", temp);
		num = atoi(temp);
		scanf("%s", temp);
		base = atoi(temp);

		char o[10];
		int length = 0;
		o[length++] = '\n';

		while ( num ) {
			o[length++] = numberList[ num%base ];
			num /= base;
		}
		
		for (int j=length-1; j>=0; j--) {
			printf("%c", o[j]);
		}

	}

}
```
