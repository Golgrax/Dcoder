## Description
```
Here, you just have to sort string 
	but do not consider case of it..
```
## Python
```python
length = int(input())

chars = [i for i in input().split()]
chars = sorted(chars, key=lambda x: x.lower())
print(*chars)
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int length = sc.nextInt();
		sc.nextLine();
		List<String> S = Arrays.asList( sc.nextLine().split(" ") );

		Collections.sort(S, String.CASE_INSENSITIVE_ORDER);

		for (int i=0; i<length; i++) {
			if (i==length-1) {
				System.out.print(S.get(i));
			} else {
				System.out.print(S.get(i)+" ");
			}
		}
		System.out.println();

	}
}
```
## C
```c
#include <stdio.h>
#include <ctype.h>

void main() {

	int length;
	scanf("%d ", &length);

	char string[20];
	fgets(string, 20, stdin);

	char S[length];
	int i=0, j=0;
	while (i < length) {
		if (string[j] != ' ')
			S[i++] = string[j];
		j++;
	}
	
	for (int i=0; i<length; i++) {
		for (int j=0; j<length-1; j++) {
			char t1 = tolower(S[j]);
			char t2 = tolower(S[j+1]);
			if (t1 > t2) {
				char temp = S[j];
				S[j] = S[j+1];
				S[j+1] = temp;
			}
		}
	}

	for (int i=0; i<length; i++)
		printf( (i!=length-1) ? "%c " : "%c\n", S[i]);
}
```