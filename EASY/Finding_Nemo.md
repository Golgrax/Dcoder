## Description
```
Yous have to find
	position of word 'Nemo' in given string.
if string is "This is a Nemo sample input"
have length of 6 words
	and word 'Nemo' is located at 4th place.
```
## Python
```python
length = int(input())
string = input().split()

print(string.index("Nemo")+1)
```
## Java
```java
import java.util.Scanner;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int length = sc.nextInt();
		sc.nextLine();
		String[] S = sc.nextLine().split(" ");
		
		for (int i=0; i<length; i++) {
			if (S[i].compareTo("Nemo") == 0) {
				System.out.println(i+1);
				break;
			}
		}
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>

void main() {
	
	int length;
	scanf("%d ", &length);
	
	char string[20];
	fgets(string, 20, stdin);

	char *subString = strtok(string, " ");

	for (int i=0; i<length; i++) {
		if ((strcmp(subString, "Nemo")==0) || (strcmp(subString, "Nemo\n")==0)) {
			printf("%d\n", i+1);
			break;
		}
		subString = strtok(NULL, " ");
	}

}
```