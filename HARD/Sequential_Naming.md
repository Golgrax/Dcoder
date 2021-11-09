## Description
```
After taking inputs,
	compare name at i exist in arr from 0 to i-1,
		if yes then increment its appended value...
		after every incrementation check again in 0 to i-1
		if its exists....
```


## Python
```python
n = int(input())
l = input().split()

increament = lambda s: f"{s[:-2]}{int(s[-2])+1})"

for i in range(n):
    temp = l[i]
    isFirst = True
    j = 0
    while j < i:
        if temp == l[j]:
            if isFirst:
                temp = l[i] + "(0)"
                isFirst = False
            temp = increament(temp)
            j = 0
        j += 1
    l[i] = temp
    print(l[i], end=" ")
```


## Java
```java
import java.util.*;
public class Dcoder {

	private static String increament(String s) {
		char[] arr = s.toCharArray();
		arr[s.length() - 2]++;
		return String.valueOf(arr);
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();
		sc.nextLine();

		String[] names = sc.nextLine().split(" ");

		for (int i = 0; i < n; i++) {
			String newName = names[i];
			boolean isFirst = true;
			int j = 0;

			while (j < i) {
				if (newName.equals(names[j])) {
					if (isFirst) {
						newName += "(0)";
						isFirst = false;
					}
					newName = increament(newName);
					j = 0;
				}
				j++;
			}

			names[i] = newName;
			System.out.print(names[i] + " ");
		}

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

void append(char s[29]) {
    int lastIndex = strlen(s);
    s[lastIndex++] = '(';
    s[lastIndex++] = '0';
    s[lastIndex++] = ')';
    s[lastIndex] = '\0';
}

void increament(char s[29]) {
    int lastIndex = strlen(s);
    s[lastIndex - 2]++;
}

void main() {

    int n;
    scanf("%d\n", &n);

    char names[50][29];
    for (int i = 0; i < n; i++)
        scanf("%s", names[i]);

    for (int i = 0; i < n; i++) {
        int isFirst = 1;
        int j = 0;

        while (j < i) {
            if ( strcmp(names[i], names[j]) == 0 ) {

                if (isFirst) {
                    append(names[i]);
                    isFirst = 0;
                }

                increament(names[i]);
                j = 0;

            }
            j++;
        }
        
        printf("%s ", names[i]);
    }
    

}
```
