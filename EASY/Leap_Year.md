## Description
```
	Leap year those year,
		which are divisible by 400
			and
		which are divisible by 4 but not divisible by 100
```
## Python
```python
test = int(input())                 # 1
output = []
for i in range(test):
	year = int(input())        		# 1900
	if (year%400==0) or (year%100!=0 and year%4==0):
		output.append("Yes")
	else:
		output.append("No")
print(*output,sep="\n")             # No
```
## Java
```java
import java.util.Scanner;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int test = sc.nextInt();					// 1
		sc.nextLine();								// Escape Char
		String[] output = new String[test];

		for (int i=0; i<test; i++) {				// 2003
			int year = sc.nextInt();
			
			if ((year%400==0) || (year%4==0 && year%100!=0)) {	// No
				output[i] = "Yes";
			} else {
				output[i] = "No";
			}
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
		int year;
		scanf("%d", &year);			// 2020

		if ((year%400==0) || (year%4==0 && year%100!=0)) {	// Yes
		strcpy(outputArray[i], "Yes");
		}
		else {
			strcpy(outputArray[i], "No");
		}

	}

	for (int i=0; i<n; i++)
		printf("%s\n",outputArray[i]);
}
```