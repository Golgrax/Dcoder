## Description
```
First find the compliment of input,
	then convert it to decimal,
		then add 1 to it...
```


## Python
```python

binary = list(input())

for i in range(len(binary)):
	if binary[i] == "1":
		binary[i] = "0"
	else:
		binary[i] = "1"

print(int("".join(binary),2)+1) 
```


## Java
```java
import java.util.Scanner;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		char[] binary = sc.nextLine().toCharArray();

		for (int i=0; i<binary.length; i++) {
			binary[i] = binary[i]=='0' ? '1' : '0';
		}

		System.out.println( Integer.parseInt(String.valueOf(binary), 2)+1);
	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

int binToDec(char n[]) {
	
	int dec = 0;
	int i= 1;
	int j = strlen(n)-2;

	while (j >= 0) {
		dec += i*(n[j]-'0');
		j -= 1;
		i *= 2;
	}
	
	return dec;

}

void main() {

	char bin[20];
	fgets(bin, 20, stdin);

	for (int i = 0; i < strlen(bin)-1; i++) {
		bin[i] = bin[i]=='0' ? '1' : '0';
	}
	
	int dec = binToDec(bin);

	printf("%d\n", dec+1);

}
```
