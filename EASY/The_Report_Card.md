## Description
```
Take,
    3 scores and print grade
        according to its mean score...
```
## Python
```python
scores = map(int, input().split())
mean = sum(scores)//3

if mean > 90:
	print("A")
elif mean > 80:
	print("B")
elif mean > 70:
	print("C")
elif mean > 60:
	print("D")
else:
	print("F")
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int score1 = sc.nextInt();
		int score2 = sc.nextInt();
		int score3 = sc.nextInt();

		int mean = ( score1+score2+score3 )/3;

		if (mean > 90) {
			System.out.println("A");
		} else if (mean > 80) {
			System.out.println("B");
		} else if (mean > 70) {
			System.out.println("C");
		} else if (mean > 60) {
			System.out.println("D");
		} else {
			System.out.println("F");
		}
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int score1, score2, score3;
	scanf("%d", &score1);
	scanf("%d", &score2);
	scanf("%d", &score3);

	int mean = ( score1+score2+score3 )/3;

	if (mean > 90) 		{ printf("A\n"); }
	else if (mean > 80) { printf("B\n"); }
	else if (mean > 70) { printf("C\n"); }
	else if (mean > 60) { printf("D\n"); }
	else 				{ printf("F\n"); }

}

```