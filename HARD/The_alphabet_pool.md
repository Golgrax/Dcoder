## Description
```
```


## Python
```python
def matchCase(c1, c2):
    a = ord(c1)-97 if ord(c1) >= 97 else ord(c1)-65
    b = ord(c2)-97 if ord(c2) >= 97 else ord(c2)-65
    
    if a == b:
        if ord(c1)>=97 and ord(c2)<97:
            return 1
        return -1

    return a-b

for _ in range(int(input())):
    s = input()
    o = [None]*len(s)
    
    o[0] = s[0]
    for i in range(1, len(s)):
        j = i
        while j > 0 and matchCase(s[i], o[j - 1]) < 0:
            o[j] = o[j - 1]
            j -= 1
        o[j] = s[i]
    
    print("".join(o))
```


## Java
```java
import java.util.*;
public class Dcoder {

	private static int matchCase(char c1, char c2) {
		int a = c1 >= 97 ? c1-97 : c1-65;
		int b = c2 >= 97 ? c2-97 : c2-65;
	
		if (a == b) {
			if (c1>=97 && c2<97)
				return 1;
			return -1;
		}
	
		return a - b;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int T = sc.nextInt();
		sc.nextLine();
		for (int t = 0; t < T; t++) {
			
			String s = sc.nextLine();

			char[] o = new char[s.length()];

			o[0] = s.charAt(0);
			for (int i = 0; i < s.length(); i++) {
				int j = i;

				while (j > 0 && matchCase(s.charAt(i), o[j - 1]) < 0) {
					o[j] = o[j - 1];
					j--;
				}

				o[j] = s.charAt(i);
			}

			System.out.println(String.valueOf(o));
		}
	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

int matchCase(char c1, char c2) {
    int a = c1 >= 97 ? c1-97 : c1-65;
    int b = c2 >= 97 ? c2-97 : c2-65;

    if (a == b) {
        if (c1>=97 && c2<97)
            return 1;
        return -1;
    }

    return a - b;
}

void main() {

    int T;
    scanf("%d\n", &T);
    for (int t = 0; t < T; t++) {
        
        char s[1001];
        scanf("%s", s);

        char o[1001];
        o[0] = s[0];
        for (int i = 0; i < strlen(s); i++) {
            int j = i;

            while (j > 0 && matchCase(s[i], o[j-1]) < 0) {
                o[j] = o[j-1];
                j--;
            }
            
            o[j] = s[i];
        }
        
        o[strlen(s)] = '\0';
        printf("%s\n", o);

    }
    

}
```
