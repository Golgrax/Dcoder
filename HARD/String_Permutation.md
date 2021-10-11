## Description
```
Get string input then sort it in alphabetical order,
Then apply recursive permutation on string
one thing to notice is while swapping char from a to b,
	move all the element in between them.
e.g.
str = abcdfg
now, we want to move g in position of c
	then opt will be abgcdf
      _-->
	abgcdf
	  ^   ^
similarly to move a in postion of f
	the opt will be 
	 <---_
	 bcdfag
	^    ^
This will helps to keep lexical order
```


## Python
```python
def sawp(lst, index1, index2):
    temp = lst[index2]
    del lst[index2]
    lst.insert(index1, temp)


def permute(s, l, r):
    if l == r:
        print("".join(s), end=' ')
    else:
        i = l
        while i <= r:
            while i<r and s[i] == s[i+1]:
                i += 1
            sawp(s, l, i)
            permute(s, l+1, r)
            sawp(s, i, l)
            i += 1

s = input()
permute(sorted(s), 0, len(s)-1)

'''
aabb
abab
abba
baab
baba
bbaa
'''
```


## Java
```java
	import java.util.*;
	public class Dcoder {

		private static void swap(char[] arr, int I, int J) {
			if (I < J) {
				char temp = arr[J];
				for(int i = J; i > I; i--)
					arr[i] = arr[i-1];
				arr[I] = temp;
			}
			else if (J < I) {
				char temp = arr[J];
				for(int i = J; i < I; i++)
					arr[i] = arr[i+1];
				arr[I] = temp;
			}
		}

		private static void permute(char[] arr, int l, int r) {
			if (l == r) {
				System.out.printf("%s ", String.valueOf(arr));
				return;
			}

			int i = l;
			while(i <= r) {
				while(i < r && arr[i] == arr[i+1])
					i++;
				swap(arr, l, i);
				permute(arr, l+1, r);
				swap(arr, i, l);
				i++;
			}
		}

		public static void main(String[] args) {

			Scanner sc = new Scanner(System.in);

			char[] arr = sc.nextLine().toCharArray();
			Arrays.sort(arr);

			permute(arr, 0, arr.length-1);
		}

	}
```


## C
```c
#include <stdio.h>
#include <string.h>

void sort(char *str) {
    for (int i=1; i<strlen(str); i++) {
        for(int j=i; j>0; j--) {
            if (str[j] < str[j-1]) {
                char temp = str[j];
                str[j] = str[j-1];
                str[j-1] = temp;
            }
        }
    }
}

void swap(char *str, int I, int J) {
    char temp = str[J];
    
    if (I < J)
        for(int i=J; i > I; i--)
            str[i] = str[i-1];
    else if (J < I)
        for(int i=J; i < I; i++)
            str[i] = str[i+1];

    str[I] = temp;
}

void permute(char *str, int l, int r) {
    if (l == r) {
        printf("%s ", str);
        return;
    }

    int i = l;
    while (i <= r) {
        while (i < r && str[i] == str[i+1])
            i++;
        
        swap(str, l, i);
        permute(str, l+1, r);
        swap(str, i , l);
        i++;
    }
    
}

void main() {

    char str[20];
    scanf("%s", str);

    sort(str);

    permute(str, 0, strlen(str)-1);

}
```
