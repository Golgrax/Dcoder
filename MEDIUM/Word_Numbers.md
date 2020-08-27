## Description
```
Make a list or dict of wording of each digits,
	Then take input as String, so that you don'y have trouble of converting and reversing it,
	Then extract each digit & print wording of it, one by one
		seperated by space....
```


## Python
```python
d={0:"zero",1:"one",2:"two",3:"three",4:"four",5:"five",6:"six",7:"seven",8:"eight",9:"nine"}
number = input()
print(*[d[int(i)] for i in number])
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		String[] word = { "zero","one","two","three","four","five","six","seven","eight","nine" };

		String input = sc.nextLine();

		for (int i=0; i<input.length(); i++) {
			System.out.print( word[input.charAt(i)-'0']+" " );
		}

	}

}
```


## C
```c
#include <stdio.h>

void main() {

	char word[10][6] = { "zero","one","two","three","four","five","six","seven","eight","nine" };

	char input[10];
	fgets(input, 10, stdin);

	for (int i=0; input[i]!='\n'; i++) {
		printf("%s ", word[input[i]-'0']);
	}

}
```
