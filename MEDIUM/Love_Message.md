## Description
```
Iterate through string in each testcase,
	then print relative differece of each char with ascii value of 'a'
```


## Python
```python
test = int(input())
for t in range(test):
  msg = input()
  print(sum(ord(i)-96 for i in msg)) 
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		sc.nextLine();
		for (int t=0; t<test; t++) {

			char[] msg = sc.nextLine().toCharArray();
			
			int sum = 0;
			for(int i=0; i<msg.length; i++) { sum += msg[i]-96; }
			System.out.println(sum);

		}

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

void main() {

	int test;
	scanf("%d ", &test);
	for (int t=0; t<test; t++) {

		char msg[30];
		fgets(msg, 30, stdin);

		int sum = 0;
		for (int i=0; i<strlen(msg)-1; i++) { sum += msg[i]-96; }
		printf("%d\n", sum);

	}

}
```
