## Description
```
count and match the count of each char between both string.
if matched then return YES else NO
```


## Python
```python
for _ in range(int(input())):
    s1, s2 = input().split()
    
    print("YES" if sorted(s1) == sorted(s2) else "NO")
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

        int T = sc.nextInt();
        sc.nextLine();
        for(int t=0; t<T; t++) {
            String[] s = sc.nextLine().split(" ");
            
            int[] dic = new int[27];
            for(int i=0; i<27; i++)
                dic[i] = 0;
            
            for(int i=0; i<s[0].length(); i++)
                dic[s[0].charAt(i) - 'a']++;
            
            for(int i=0; i<s[1].length(); i++)
                dic[s[1].charAt(i) - 'a']--;
            
            boolean isEqual = true;
            for(int i=0; i<27; i++)
                if (dic[i] != 0) {
                    isEqual = false;
                    break;
                }
            
            System.out.println(isEqual ? "YES" : "NO");
        }
	}

}
```


## C
```c
#include  <stdio.h>
#include <string.h>

//Compiler version gcc  6.3.0

int main()
{
    int T;
    scanf("%d\n", &T);
    for(int t=0; t<T; t++) {
        char str[100000];
        scanf("%[^\n]%*c", str);
        
        int dic[27];
        for(int i=0; i<27; i++)
            dic[27] = 0;

        int isSecond = 0;
        for (int i = 0; i < strlen(str); i++) {
            if (str[i] == ' ')
                isSecond = 1;
            else
                dic[str[i] - 'a'] += isSecond ? -1 : 1;
        }
        
        int isEqual = 1;
        for (int i = 0; i < 27; i++)
            if (dic[i] != 0) {
                isEqual = 0;
                break;
            }
        
        printf(isEqual ? "YES\n" : "NO\n");
    }
    
}
```
