## Description
```
Take stirng and
    increase each char in string by one position..
```
## Python
```python
string = input()

output = "".join( chr(ord(i)+1) for i in string )

print(output)
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String str = sc.nextLine();
		String output_str = "";

		for (int i=0; i<str.length(); i++) {
			output_str += (char)(str.charAt(i)+1);
		}

		System.out.println( output_str );
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>

void main() {

	char input[20], output[20];

	fgets(input, 100, stdin);

	for (int i=0; i<strlen(input)-1; i++) { output[i] = input[i]+1; }

	output[strlen(input)] = '\0';

	printf("%s\n", output);

}

```