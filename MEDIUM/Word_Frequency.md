## Description
```
Take string and length and split at spaces,
    and count the freacueny of each word....
    Then sort in decending order and print it...
```
## Python
```python
length = int(input())
string = input().split()

word_dictionary = {}

for word in string:
	if word in word_dictionary:
		word_dictionary[ word ] += 1
	else:
		word_dictionary[ word ] = 1

print( " ".join
				( sorted(
						word_dictionary,
						key=lambda x: word_dictionary[x],
						reverse=True)
					)
		)
```
## Java
```java
import java.util.ArrayList;
import java.util.Scanner;

public class Dcoder {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);

		int length = sc.nextInt();

		String[] string = sc.nextLine().split(" ");

		ArrayList<String> word_dictionary = new ArrayList<>();
		ArrayList<Integer> word_count = new ArrayList<>();

		for (int i=0; i<string.length; i++) {

			if ( word_dictionary.contains(string[i]) ) {
				int index = word_dictionary.indexOf(string[i]);
				word_count.set(index, word_count.get(index)+1);
			} else {
				word_dictionary.add(string[i]);
				word_count.add(1);
			}

		}

		String output = "";
		for (int i=0; i<word_count.size(); i++) {

			int max = word_count.get(i);
			int max_index = i;

			for (int j=0; j<word_count.size(); j++) {
				if ( word_count.get(j) > max ) {
					max = word_count.get(j);
					max_index = j;
				}
			}
			
			output += " "+word_dictionary.get(max_index);
			word_count.set(max_index, -1);
		}

		System.out.println(output.strip());

	}
	
}
```
## C
```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Compiler version gcc  6.3.0

int main() {
  int N, *frequency, i, j, appeared, highestPos;
  char **word;
  scanf("%d", &N);
  frequency = (int*)calloc(N, sizeof(int));
  word = (char**)malloc(N*sizeof(char*));
  for(i = 0; i < N; i++)
    word[i] = (char*)calloc(40, sizeof(char));

  for(i = 0; i < N; i++)
    scanf("%s", word[i]);

  for(i = 0; i < N; i++) {
    appeared = 0;
    for(j = 0; j < i; j++)
      if(strcmp(word[j], word[i]) == 0) {
        appeared = 1;
        frequency[j]++;
        break;
      }

    if(appeared == 0)
      frequency[i]++;

  }
  for(i = 0; i < N; i++) {
    highestPos = 0;
    for(j = 1; j < N; j++)
      if(frequency[j] > frequency[highestPos])
        highestPos = j;

    if(frequency[highestPos] == 0)
      break;

    printf("%s ", word[highestPos]);
    frequency[highestPos] = 0;
  }
  for(i = 0; i < N; i++)
    free(word[i]);

  free(frequency);
  free(word);
  return 0;
}

```