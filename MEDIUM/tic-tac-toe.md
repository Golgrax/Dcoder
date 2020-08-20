## Description
```
Take input, and set win pointer = 0,
	Check if, any row or column or diagonal is same
		if X wins, set win = 1
		or O wins, set win = 2
```


## Python
```python
# Tic-Tac-Toe
t = [input().split() for i in range(3)]

P = 0

if t[0][0]==t[1][1] and t[0][0]==t[2][2] and t[0][0]=="X":
	P = 1
elif t[0][2]==t[1][1] and t[0][2]==t[2][0] and t[0][2]=="X":
	P = 1
elif t[0][0]==t[1][1] and t[0][0]==t[2][2] and t[0][0]=="O":
	P = 2
elif t[0][2]==t[1][1] and t[0][2]==t[2][0] and t[0][2]=="O":
	P = 2
else:

	for i in range(3):
		if all(x=="X" for x in t[i]):
			P = 1
		elif all(t[j][i]=="X" for j in range(3)):
			P = 1
		elif all(x=="O" for x in t[i]):
			P = 2
		elif all(t[j][i]=="O" for j in range(3)):
			P = 2

if P:
	print("Player", P)   
else:
	print("Draw")
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		char[][] T = new char[3][6];
		for (int i=0; i<3; i++) { T[i] = sc.nextLine().toCharArray(); }

		int x = 'X'*3;
		int o = 'O'*3;
		int win = 0;


		if ( T[0][0]+T[1][2]+T[2][4] == x ) {
			win = 1;
		} else if ( T[0][0]+T[1][2]+T[2][4] == o ) {
			win = 2;
		} else if ( T[0][4]+T[1][2]+T[2][0] == x ) {
			win = 1;
		} else if ( T[0][4]+T[1][2]+T[2][0] == o ) {
			win = 2;
		} else if ( T[0][0]+T[0][2]+T[0][4]==x || T[1][0]+T[1][2]+T[1][4]==x || T[2][0]+T[2][2]+T[2][4]==x ) {
			win = 1;
		} else if ( T[0][0]+T[0][2]+T[0][4]==o || T[1][0]+T[1][2]+T[1][4]==o || T[2][0]+T[2][2]+T[2][4]==o ) {
			win = 2;
		} else if ( T[0][0]+T[1][0]+T[2][0]==x || T[0][2]+T[1][2]+T[2][2]==x || T[0][4]+T[1][4]+T[2][4]==x ) {
			win = 1;
		} else if ( T[0][0]+T[1][0]+T[2][0]==o || T[0][2]+T[1][2]+T[2][2]==o || T[0][4]+T[1][4]+T[2][4]==o ) {
			win = 2;
		}

		System.out.println( win!=0 ? "Player "+win : "Draw" );

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

void main() {

	char T[3][6];
	for (int i=0; i<3; i++) { fgets(T[i], 7, stdin); }

	int win = 0;
	int x = 'X'*3;
	int o = 'O'*3;

	if ( T[0][0]+T[1][2]+T[2][4] == x ) {
		win = 1;
	} else if ( T[0][0]+T[1][2]+T[2][4] == o ) {
		win = 2;
	} else if ( T[0][4]+T[1][2]+T[2][0] == x ) {
		win = 1;
	} else if ( T[0][4]+T[1][2]+T[2][0] == o ) {
		win = 2;
	} else if ( !strcmp(T[0], "X X X\n") || !strcmp(T[1], "X X X\n") || !strcmp(T[2], "X X X\n") ) {
		win = 1;
	} else if ( !strcmp(T[0], "O O O\n") || !strcmp(T[1], "O O O\n") || !strcmp(T[2], "O O O\n") ) {
		win = 2;
	} else if ( T[0][0]+T[1][0]+T[2][0]==x || T[0][2]+T[1][2]+T[2][2]==x || T[0][4]+T[1][4]+T[2][4]==x ) {
		win = 1;
	} else if ( T[0][0]+T[1][0]+T[2][0]==o || T[0][2]+T[1][2]+T[2][2]==o || T[0][4]+T[1][4]+T[2][4]==o ) {
		win = 2;
	}

	if ( win ) {
		printf("Player %d\n", win);
	} else {
		printf("Draw\n");
	}

}
```
