## Description
```
Capitalize first char anf every char after space...
```
## Python
```python
string = input()

print( string.title() )
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String str = sc.nextLine();
		char[] str_array = str.toCharArray();

		for (int i=0; i<str.length(); i++) {
			if (i==0 || str_array[i-1]==' ') {
				str_array[i] = Character.toUpperCase(str_array[i]);
			}
		}
		str = String.valueOf(str_array);

		System.out.println(str);
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>
#include <ctype.h>

void main() {

	char string[30];

	fgets(string, 30, stdin);

	for (int i=0; i<strlen(string)-1; i++) { 
		if (i==0 || string[i-1]==' ') {
			string[i] = toupper(string[i]);
		}
	}

	printf("%s", string);

}

```