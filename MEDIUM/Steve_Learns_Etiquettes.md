## Description
```
Take, input sentence, 
	replace '?' in end with ', please?'
```


## Python
```python
sentance = input()

sentance = sentance.replace("?", ", please?")

print( sentance )
```


## Java
```java
import java.util.Scanner;
public class template {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		String sentance = sc.nextLine();

		sentance = sentance.replace("?", ", please?");

		System.out.println( sentance);

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

void main() {

	char sentance[50];

	fgets( sentance, 50, stdin );
	sentance[strlen(sentance)-2] = '\0';
	
	strcat(sentance, ", please?");

	printf("%s\n", sentance);

}
```
