## Description
```
first check if password length is valid,
	then check if it consist of ,
		a uppercase,
		a number
```


## Python
```python
test = int(input())

for t in range(test):
	pas = input()
	u,n,l = 0,0,0
	if len(pas)<6 or len(pas)>20:
		print(False)
	else:
		for i in pas:
			if i.isupper():
				u = 1
			elif i.isdigit():
				n = 1
			else:
				l = 1
	if u and n and l:
		print(True)
	else:
		print(False)
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

			String pass = sc.nextLine();
			
			if (pass.length()<6 || pass.length()>20) {
				System.out.println("False");
			} else {
				int u=0, n=0, l=0;
				for (int i=0; i<pass.length(); i++) {
					if (Character.isUpperCase(pass.charAt(i))){
						u = 1;
					} else if (Character.isDigit(pass.charAt(i))){
						n = 1;
					} else {
						l = 1;
					}
				}
				if (u==1 && n==1 && l==1) {
					System.out.println("True");
				} else {
					System.out.println("False");
				}
			}

		}

	}

}
```


## C
```c
#include <stdio.h>
#include <ctype.h>
#include <string.h>

void main() {

	int test;
	scanf("%d ", &test);

	for (int i=0; i<test; i++) {

		char pass[30];
		fgets(pass, 30, stdin);

		if ( strlen(pass)<6 || strlen(pass)>20 ) {
			printf("False\n");
		} else {
			int u=0, n=0, l=0;
			for (int j=0; j<strlen(pass); j++) {

				if ( isupper(pass[j]) ) { u = 1; }
				else if ( isdigit(pass[j]) ) { n = 1; }
				else { l = 1; }

			}
			if (u && n && l) {
				printf("True\n");
			} else {
				printf("False\n");
			}
		}

	}

}
```
