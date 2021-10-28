## Description
```
First get position of first max digit of number,
	then if max digit is at first position then
		then remomve first smallest digit from whole number
	else
		remove first smallest digit on left side of max digit
```


## Python
```python
for _ in range(int(input())):
    n = input()
    
    maxIndex = n.index(max(n))
    delIndex = n.index(min(n) if maxIndex == 0 else min(n[:maxIndex]))
    print(n[:delIndex]+n[delIndex+1:])
    
```


## Java
```java
import java.util.*;
public class Dcoder {

	private static int getMaxPos(String s) {
		char MAX = '0';
		int pos = 0;
	
		for (int i = 0; i < s.length(); i++)
			if (s.charAt(i) > MAX) {
				MAX = s.charAt(i);
				pos = i;
			}
		
		return pos;
	}
	
	private static int getDeletePos(String s, int end) {
		char MIN = '9';
		int pos = 0;
	
		for (int i = 0; i < end; i++)
			if (s.charAt(i) < MIN) {
				MIN = s.charAt(i);
				pos = i;
			}
		
		return pos;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);


		int T = sc.nextInt();
		sc.nextLine();
		for(int t = 0; t < T; t++) {

			String s = sc.nextLine();

			int maxPos = getMaxPos(s);

			int deletePos = maxPos == 0 ? getDeletePos(s, s.length()) : getDeletePos(s, maxPos);

			for (int i = 0; i < s.length(); i++)
				if (i != deletePos)
					System.out.print(s.charAt(i));
			System.out.println();

		}

	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

int getMaxPos(char s[10]) {
    char MAX = '0';
    int pos = 0;

    for (int i = 0; i < strlen(s); i++)
        if (s[i] > MAX) {
            MAX = s[i];
            pos = i;
        }
    
    return pos;
}

int getDeletePos(char s[10], int end) {
    char MIN = '9';
    int pos = 0;

    for (int i = 0; i < end; i++)
        if (s[i] < MIN) {
            MIN = s[i];
            pos = i;
        }
    
    return pos;
}

void main() {

    int T;
    scanf("%d", &T);
    for (int t = 0; t < T; t++) {
        
        char n[10];
        scanf("%s", n);

        int maxPos = getMaxPos(n);

        int deletePos = maxPos == 0 ? getDeletePos(n, strlen(n)) : getDeletePos(n, maxPos);

        for(int i=0; i<strlen(n); i++)
            if (i != deletePos)
                printf("%c", n[i]);
        printf("\n");

    }
    

}
```
