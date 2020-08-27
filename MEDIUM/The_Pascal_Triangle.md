## Description
```
Print pascall triangle with n-i-1 space in beginning...
```


## Python
```python
n = int(input())

l = [[1],[1,1]]

if n > 2:
	for i in range(2,n):
		t = [1]
		for j in range(len(l[i-1])-1):
			t.append(l[i-1][j]+l[i-1][j+1])
		t.append(1)
		l.append(t)

for i,x in enumerate(l):
	print(end=" "*(n-1-i))
	print(*x)
```


## Java
```java
import java.util.Scanner;
public class template {

	private static int combi(int a, int b) {
		int num = a, den = b;
		if (b==0) return 1;
		for (int i=1; i<b; i++) { num *= (a-i); }
		for (int i=2; i<b; i++) { den *= i; }
		return num/den;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();
		
		for (int i=0; i<n; i++) {
			for (int j=n-i; j>0; j--) {
				System.out.print(" ");
			}
			for (int j=0; j<=i; j++) {
				System.out.print(combi(i,j)+" ");
			}
			System.out.println();
		}

	}

}
```


## C
```c
#include <stdio.h>

int combi(int a, int b) {
	int num = a, den = b;
	if (b==0) return 1;
	for (int i=1; i<b; i++) { num *= (a-i); }
	for (int i=2; i<b; i++) { den *= i; }
	return num/den;
}


void main() {

	int n;
	scanf("%d", &n);

	for (int i=0; i<n; i++) {
		for (int j=n-i; j>0; j--) { printf(" "); }
		for (int j=0; j<=i; j++) {
			printf("%d ", combi(i,j));
		}
		printf("\n");
	}

}
```
