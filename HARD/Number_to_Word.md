## Description
```
```


## Python
```python
units = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
elevens = ["ten", "eleven", "twelve", "thirteen", "forteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
multiplier = ["","thousand", "million", "billion"]

def getHundreds(lst):
    num = 0
    if "hundred" in lst:
        num = units.index(lst[0]) * 100
        lst = lst[2:]
    if len(lst) == 1:
        if lst[0] in tens:
            num += 10 * tens.index(lst[0])
        elif lst[0] in elevens:
            num += 10 + elevens.index(lst[0])
        else:
            num += units.index(lst[0])
    elif len(lst) == 2:
        num += 10 * tens.index(lst[0])
        num += units.index(lst[1])
    
    return num

def getThousand(th, n, s):
    if th in s:
        index = s.index(th)
        n += getHundreds(s[:index])*1000**multiplier.index(th)
        s = s[index+1:]
    return n,s

s = input().lower().split()
n = 0
n, s = getThousand("billion", n, s)
n, s = getThousand("million", n, s)
n, s = getThousand("thousand", n, s)

if s:
    n += getHundreds(s)
```


## Java
```java
import java.util.*;

public class Dcoder {

	private static String[] units = {"", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	private static String[]  elevens = {"ten", "eleven", "twelve", "thirteen", "forteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"};
	private static String[] tens = {"", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"};
	private static String[]  multiplier = {"","thousand", "million", "billion"};

	private static int index(String[] arr, String S) {
		for(int i=0; i<arr.length; i++) 
			if (arr[i].equals(S))
				return i;
		return -1;
	}

	private static int getHundreds(String[] arr) {
		int nums = 0;
		int i = 0;
		if (index(arr, "hundred") != -1) {
			nums = index(units, arr[0]) * 100;
			i = 2;
		}
		if (arr.length - i == 1) {
			if (index(tens, arr[i]) != -1)
				nums += 10 * index(tens, arr[i]);
			else if (index(elevens, arr[i]) != -1)
				nums += 10 + index(elevens, arr[i]);
			else
				nums += index(units, arr[i]);
		} else if (arr.length - i == 2) {
			nums += 10 * index(tens, arr[i]);
			nums += index(units, arr[i+1]);
		}
		return nums;
	}

	private static long getThousand(int i, long n, String[] arr, int start) {
		return n + getHundreds(Arrays.copyOfRange(arr, start, i)) * (long)Math.pow(1000, index(multiplier, arr[i]));
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);
		
		String[] strArray = sc.nextLine().toLowerCase().split(" ");

		long n = 0;
		int i,j;
		
		i = index(strArray, "billion");
		if(i != -1)
			n = getThousand(i, n, strArray, 0);
		
		j = index(strArray, "million");
		if(j != -1) {
			n = getThousand(j, n, strArray, i+1);
			i = j;
		}

		j = index(strArray, "thousand");
		if(j != -1) {
			n = getThousand(j, n, strArray, i+1);
			i = j;
		}

		n += getHundreds(Arrays.copyOfRange(strArray, i+1, strArray.length));

		System.out.println(n);
	
	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h> 

char *units[10] = {"", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
char  *elevens[10] = {"ten", "eleven", "twelve", "thirteen", "forteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"};
char *tens[10] = {"", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"};
char *multiplier[10] = {"","thousand", "million", "billion"};

long power(int base, int deg) {
    long r = base;
    for(int i=0; i<deg-1; i++)
        r *= base;
    return r;
}

int wordCnt(char s[]) {
    int cnt = 1;
    for(int i=0; i < strlen(s); i++)
        if (s[i] == ' ')
            cnt++;
    return cnt;
}

char *substr(char s[], int start, int end) {
    char *str = (char *)malloc((end - start + 1) * sizeof(char));
    for(int i=start; i<end; i++)
        str[i - start] = s[i];
    str[end] = '\0';
    return str;
}

char **split(char s[]) {
    int len = wordCnt(s);
    char **arr = (char **)malloc(len * sizeof(char *));
    
    if (len == 1) {
        arr[0] = (char *)malloc(strlen(s) * sizeof(char));
        strcpy(arr[0], s);
        return arr;
    }

    char *c;
    int arrIndex = 0;
    int i = 0;
    int j = 0;
    while (i < strlen(s)) {
        j = i;
        while (j < strlen(s) && s[j] != ' ')
            j++;
        arr[arrIndex] = (char *)malloc((j - i + 1) * sizeof(char *));
        c = substr(s, i, j);
        strcpy(arr[arrIndex], c);
        i = j + 1;
        arrIndex++;
    }

    free(c);
    return arr;
}

char **copyArr(char **arr, int len, int start, int end) {
    char **newArr = (char **)malloc((end - start) * sizeof(char));
    for(int i=start; i<end; i++) {
        newArr[i-start] = (char *)malloc(strlen(arr[i]) * sizeof(char));
        strcpy(newArr[i - start], arr[i]);
    }
    return newArr;
}

void lowerCase(char *s) {
    for(int i=0; i<strlen(s); i++)
        s[i] = tolower(s[i]);
}

int arrIndex(char **arr, int len, char s[]) {
    for(int i=0; i<len; i++)
        if (strcmp(arr[i], s) == 0)
            return i;
    return -1;
}

int getHundreds(char **arr, int len) {
    int nums = 0;
    int i = 0;

    if (arrIndex(arr, len, "hundred") != -1) {
        nums = arrIndex(units, 10, arr[0]) * 100;
        i = 2;
    }

    if (len - i == 1) {
        if (arrIndex(tens, 10, arr[i]) != -1)
            nums += 10 * arrIndex(tens, 10, arr[i]);
        else if (arrIndex(elevens, 10, arr[i]) != -1)
            nums += 10 + arrIndex(elevens, 10, arr[i]);
        else
            nums += arrIndex(units, 10, arr[i]);
    } else if (len - i == 2) {
        nums += 10 * arrIndex(tens, 10, arr[i]);
        nums += arrIndex(units, 10, arr[i+1]);
    }
    
    return nums;
}

long getThousand(int i, long n, char **arr, int len, int start) {
    return n
            + getHundreds(copyArr(arr, len, start, i), i - start)
            * power(1000, arrIndex(multiplier, 4, arr[i]));
}

void main() {
    char s[100];
    scanf("%[^\n]%*c", s);

    int len = wordCnt(s);
    lowerCase(s);
    char **strArray = split(s);

    long n = 0;
    int i, j;

    i = arrIndex(strArray, len, "billion");
    if(i != -1)
        n = getThousand(i, n, strArray, len, 0);
    
    j = arrIndex(strArray, len, "million");
    if (j != -1) {
        n = getThousand(j, n, strArray, len, i+1);
        i = j;
    }

    j = arrIndex(strArray, len, "thousand");
    if (j != -1) {
        n = getThousand(j, n, strArray, len, i+1);
        i = j;
    }

    n += getHundreds(copyArr(strArray, len, i+1, len), len-i-1);

    printf("%ld", n);

    for(int i=0; i<len; i++)
        free(strArray[i]);
    free(strArray);
}
```
