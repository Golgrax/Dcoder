## Description
```
Just sort the array on the of ratings
```


## Python
```python
n, d = map(int, input().split())

l = []
for i in range(n):
    s = input()
    l.append([s[:-4], float(s[-4:])])
    
l.sort(key=lambda x: x[1], reverse=d+1)

print(*[i[0]+" "+str(i[1]) for i in l], sep="\n")
```


## Java
```java
import java.util.*;

class SortByRating implements Comparator<String> {
	int direction;

	public SortByRating(int direction) {
		this.direction = direction;
	}

    public int compare(String a, String b) {
		float a_rating = Float.parseFloat(a.substring(a.length()-4));
		float b_rating = Float.parseFloat(b.substring(b.length()-4));

		
		if ((direction==1 && b_rating > a_rating) || (direction==-1 && b_rating < a_rating))
			return 1;
		
		if ((direction==1 && b_rating < a_rating) || (direction==-1 && b_rating > a_rating))
			return -1;
		
	    return 0;
    }
}

public class Dcoder {
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n, d;

		n = sc.nextInt();
		d = sc.nextInt();
		sc.nextLine();

		String[] strArray = new String[n];
		for(int i=0; i<n; i++)
			strArray[i] = sc.nextLine();
		
		Arrays.sort(strArray, new SortByRating(d));

		for(int i=0; i<n; i++)
			System.out.println(strArray[i]);
	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

float rating(char *s) {
    int k = strlen(s);
    while (s[k] != ' ')
        k--;

    float num = s[k+1] - '0';

    if (s[k+2] - '0' >= 0 && s[k+2] - '0' <= 9)
        num = num*10 + (s[k+2] - '0') + 0.1*(s[k+4] - '0');
    else
        num += 0.1*(s[k+3] - '0');

    
    return num;
}

void sort(char strArray[50][100], int size, int direction) {
    for (int i=1; i<size; i++) {
        for(int j=i; j>0; j--) {
            float a = rating(strArray[j]);
            float b = rating(strArray[j-1]);
            if ((direction==-1 && a < b) || (direction==1 && a > b)) {
                char temp[100];
                strcpy(temp, strArray[j]);
                strcpy(strArray[j], strArray[j-1]);
                strcpy(strArray[j-1], temp);
            }
        }
    }
}

void main() {

    int n, d;
    scanf("%d %d\n", &n, &d);

    char strArray[50][100];
    for(int i=0; i<n; i++)
        scanf("%[^\n]%*c", strArray[i]);

    sort(strArray, n, d);

    for(int i=0; i<n; i++)
        printf("%s\n", strArray[i]);

}
```
