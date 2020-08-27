## Description
```
Take input for each test case,
	extract integer from index 1-2 and 4-5..
print Season {1st integer}, Episode {2nd integer}
```


## Python
```python
test = int(input())
for i in range(test):
  s = input()
  print(f"Season {int(s[1:3])}, Episode {int(s[-2:])}")
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int test = sc.nextInt();
		sc.nextLine();
		for (int i=0; i<test; i++) {

			String str = sc.nextLine();
			int s = Integer.parseInt(str.substring(1,3));
			int e = Integer.parseInt(str.substring(4));
			System.out.println("Season "+s+", Episode "+e);

		}

	}

}
```


## C
```c
#include <stdio.h>

void main() {

	int test;
	scanf("%d ", &test);

	for (int i=0; i<test; i++) {
		
		char str[7];
		fgets(str, 7, stdin);

		int s = str[1]*10+str[2]-'0'*11;
		int e = str[4]*10+str[5]-'0'*11;
		
		printf("Season %d, Episode %d\n",
				s, e);
	}

}
```
