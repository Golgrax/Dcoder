## Description
```
Get inputs and make dictionary as set,
	then iterate string with pointer PREV & CURR
		initially PREV = 0 & CURR = 1
	and make note of value as max matched word count,
	if substring from PREV to CURR is found in dictionary,
		then take max of subtring from PREV to CURR+1
		then take max of subtring from CURR to CURR+1
	else,
		find matched word value of subtring from PREV to CURR+1
	and If CURR  becomes length of string
		then check if subtring PREV to CURR is in distionary
			the return matched word + 1
		else 0
```


## Python
```python

def search(wholeString, wordSet, prev, curr, matchedWord):
    if curr < len(wholeString):
        if wholeString[prev:curr] in wordSet:
            return max(
                    search(wholeString, wordSet, prev, curr+1, matchedWord), 
                    search(wholeString, wordSet, curr, curr+1, matchedWord+1)
                )
        return search(wholeString, wordSet, prev, curr+1, matchedWord)
    else:
        if wholeString[prev:curr] in wordSet:
            return matchedWord+1
        return 0
        
    
for _ in range(int(input())):
    string = input()
    dictionary = set(input() for i in range(int(input())))
    print(search(string, dictionary, 0, 1, 0))
```


## Java
```java
import java.util.*;

public class Dcoder {
    public static int search(String wholeString, Set<String> wordSet, int prev, int curr, int matchedWord) {
        if (curr < wholeString.length()) {
            if (wordSet.contains(wholeString.substring(prev, curr)))
                return Math.max(
                        search(wholeString, wordSet, prev, curr+1, matchedWord),
                        search(wholeString, wordSet, curr, curr+1, matchedWord+1)
                    );
            return search(wholeString, wordSet, prev, curr+1, matchedWord);
        } else {
            return wordSet.contains(wholeString.substring(prev, curr))
                        ? matchedWord + 1
                        : 0;
        }
    }
    
	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

        int n = Integer.parseInt(sc.nextLine());
        
        for(int i=0; i<n; i++) {
            String string = sc.nextLine().trim();
            
            int wordCnt = Integer.parseInt(sc.nextLine());
            
            Set<String> dictionary = new HashSet<>();
            for(int j=0; j<wordCnt; j++) 
                dictionary.add(sc.nextLine().trim());
            
            System.out.println(search(string, dictionary, 0, 1, 0));
        }
	}

}
```


## C
```c
#include <stdio.h>
#include <string.h>

int max(int a, int b) {
    return a > b ? a : b;
}

int contains(char word[30], int start, int end, char set[1500][30], int setLen) {

    for(int i = 0; i < setLen; i++) {
        int j = start;
        while( j < end && j-start < strlen(set[i]) && word[j] == set[i][j-start])
            j++;
        
        if (j == end && j-start == strlen(set[i]))
            return 1;
        
    }
    return 0;
}

int search(char wholeString[30], char wordSet[1500][30], int setLen, int prev, int curr, int matchedWord) {
    if ( curr < strlen(wholeString) ) {
        if (contains(wholeString, prev, curr, wordSet, setLen)) {
            int m = max(
                    search(wholeString, wordSet, setLen, prev, curr+1, matchedWord),
                    search(wholeString, wordSet, setLen, curr, curr+1, matchedWord+1)
                );
            return m;
        }
        return search(wholeString, wordSet, setLen, prev, curr+1, matchedWord);
    } else {
        if (contains(wholeString, prev, curr, wordSet, setLen)) {
            return matchedWord + 1;
        }
        return 0;
    }
}

void main() {

    int n;
    scanf("%d", &n);

    for(int i=0; i<n; i++) {

        char string[30];
        scanf("%s", string);

        int wordCnt;
        scanf("%d", &wordCnt);

        char dictionary[1500][30];
        for(int j=0; j<wordCnt; j++) 
            scanf("%s", dictionary[j]);
        
        printf("%d\n", search(string, dictionary, wordCnt, 0, 1, 0));
    }

}
```
