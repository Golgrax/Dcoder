## Description
```
Just print,
    1 in place of 0 in input
    0 in place of 1 in input
```
## Python
```python
binary = input()
output_string = ""

for char in binary:
	output_string += "1" if char=="0" else "0"

print(output_string)
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String binary = sc.nextLine();
		String output_string = "";

		for (int i=0; i<binary.length(); i++) {
			if (binary.charAt(i)=='0') {
				output_string += "1";
			} else {
				output_string += "0";
			}
		}

		System.out.println(output_string);
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>

void main() {

	char binary[32];

	fgets(binary, 32, stdin);

	for (int i=0; i<strlen(binary)-1; i++) {
		if (binary[i]=='0') {
			printf("1");
		}
		else {
			printf("0");
		}
	}
	printf("\n");

}

```