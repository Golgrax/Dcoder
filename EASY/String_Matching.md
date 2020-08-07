## Description
```
	In this problem,
		you have to check if string_2 is present in string_1 or not
		for given no. of test case 
			and return "Yes" or "No"
	```
## Python
```python
test = int(input())                 # 1
output = []
for i in range(test):
	s1, s2 = input().split()        # abcde abc
	if s2 in s1:
		output.append("Yes")
	else:
		output.append("No")
print(*output,sep="\n")             # Yes
```
## Java
```java
import java.util.Scanner;

public class temp {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int test = sc.nextInt();					// 1
		sc.nextLine();								// Escape Char
		String[] input = new String[test];
		String[] output = new String[test];

		for (int i=0; i<test; i++)					// Abcd cd
			input[i] = sc.nextLine();

		for (int i=0; i<test; i++) {				// Yes
			String[] s = input[i].split(" ");
			if (s[0].contains(s[1])) 
				output[i] = "Yes";
			else
				output[i] = "No";
		}

		for (int i=0; i<test; i++)
			System.out.println(output[i]);
	}
}
```
## C
```c
#include <stdio.h>
#include <string.h>

void main() {
	int n;
	char outputArray[10][5];

	scanf("%d ", &n);				// 1
	for (int i=0; i<n; i++) {
		char string[20];
		fgets(string, 20, stdin); 	// abcd abc

		char *supString = strtok(string, " ");	// abcd
		char *subString = strtok(NULL, " ");	// abc

		int k = 0;
		char *temp = subString;
		for (int j=0; j<strlen(supString); j++) {
			while (*(temp+k)!='\n' && *(supString+j)==*(temp+k)) {
				j++; k++;
			}
		}
		strcpy(outputArray[i], (*(temp+k) == '\n') ? "Yes" : "No");		// Yes
	}

	for (int i=0; i<n; i++)
		printf("%s\n",outputArray[i]);
}

```