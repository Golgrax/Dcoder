## Description
```

```


## Python
```python
def prime(num):
    flag = False

    if num > 1:
        for i in range(2, num):
            if (num  %  i) == 0:
                flag = True
                break
    
    return flag

n = int(input())

prime_list = [i for i in range(2, n+1) if not prime(i)]
square_size = int(len(prime_list)**0.5)

magic_square = [[0]*square_size for i in range(square_size)]

direction = 0
index = 0
i = 0
j = 0

while index < len(prime_list):
    if direction % 4 == 0:
        if j < square_size and magic_square[i][j] == 0:
            magic_square[i][j] = prime_list[index]
            j += 1
            index += 1
        else:
            direction += 1
            i += 1
            j -= 1
    elif direction % 4 == 1:
        if i < square_size and magic_square[i][j] == 0:
            magic_square[i][j] = prime_list[index]
            i += 1
            index += 1
        else:
            direction += 1
            i -= 1
            j -= 1
    elif direction % 4 == 2:
        if j >= 0 and magic_square[i][j] == 0:
            magic_square[i][j] = prime_list[index]
            j -= 1
            index += 1
        else:
            direction += 1
            i -= 1
            j += 1
    else:
        if i >= 0 and magic_square[i][j] == 0:
            magic_square[i][j] = prime_list[index]
            i -= 1
            index += 1
        else:
            direction += 1
            i += 1
            j += 1

for i in range(square_size):
    print(*magic_square[i])
```


## Java
```java
import java.util.*;
public class Dcoder {

	private static boolean isPrime(int num) {
		if (num <= 1)
			return true;

		for(int i=2; i<num; i++)
			if (num % i == 0)
				return false;

		return true;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();

		if (n == 2) {
			System.out.println(2);
			return;
		}

		int len = 0;
		for(int i=2; i<=n; i++)
			len += isPrime(i) ? 1 : 0;
		
		int[] prime_list = new int[len];
		int index = 0;
		for(int i=2; i<=n; i++)
			if (isPrime(i))
				prime_list[index++] = i;

		int square_size = (int)Math.pow(len, 0.5);

		int[][] magic_sqaure = new int[square_size][square_size];
		for(int i=0; i<square_size; i++)
			for(int j=0; j<square_size; j++)
				magic_sqaure[i][j] = 0;
		
		int direction = 0;
		int i = 0, j = 0;
		index = 0;

		while(index < len) {
			if (direction % 4 == 0) {
				if (j < square_size && magic_sqaure[i][j] == 0) {
					magic_sqaure[i][j] = prime_list[index];
					j++;
					index++;
				} else {
					direction++;
					i++;
					j--;
				}
			} else if (direction % 4 == 1) {
				if (i < square_size && magic_sqaure[i][j] == 0) {
					magic_sqaure[i][j] = prime_list[index];
					i++;
					index++;
				} else {
					direction++;
					i--;
					j--;
				}
			} else if (direction % 4 == 2) {
				if (j >= 0 && magic_sqaure[i][j] == 0) {
					magic_sqaure[i][j] = prime_list[index];
					j--;
					index++;
				} else {
					direction++;
					i--;
					j++;
				}
			} else {
				if (i >= 0 && magic_sqaure[i][j] == 0) {
					magic_sqaure[i][j] = prime_list[index];
					i--;
					index++;
				} else {
					direction++;
					i++;
					j++;
				}
			}
		}

		for(i=0; i<square_size; i++)
			for(j=0; j<square_size; j++)
				System.out.printf(j+1==square_size ? "%d\n" : "%d ", magic_sqaure[i][j]);

	}

}
```


## C
```c
#include <stdio.h>
#include <stdlib.h>

int isPrime(int num) {
    if (num <= 1)
        return 0;

    for(int i=2; i<num; i++)
        if (num % i == 0)
            return 0;

    return 1;
}

int squareRoot(int num) {
    int r = 2;
    while (r*r != num)
        r++;
    return r;
}

void main() {

    int n;
    scanf("%d", &n);

    if (n == 2) {
        printf("2\n");
        return;
    }

    int len = 0;
    for(int i=2; i<=n; i++)
        len += isPrime(i);
    
    int* prime_list = (int *)malloc(len * sizeof(int));
    int index = 0;
    for(int i=2; i<=n; i++)
        if (isPrime(i))
            prime_list[index++] = i;

    int square_size = squareRoot(len);

    int** magic_square = (int **)malloc(square_size * sizeof(int *));
    for(int i=0; i<square_size; i++) {
        magic_square[i] =  (int *)malloc(square_size * sizeof(int));
        for(int j=0; j<square_size; j++)
            magic_square[i][j] = 0;
    }
    
    int direction = 0;
    int i = 0, j = 0;
    index = 0;

    while (index < len) {
        if (direction % 4 == 0) {
            if (j < square_size && magic_square[i][j] == 0) {
                magic_square[i][j] = prime_list[index];
                j++;
                index++;
            } else {
                direction++;
                i++;
                j--;
            }
        } else if (direction % 4 == 1) {
            if (i < square_size && magic_square[i][j] == 0) {
                magic_square[i][j] = prime_list[index];   
                i++;
                index++;
            } else {
                direction++;
                i--;
                j--;
            }
        } else if (direction % 4 == 2) {
            if (j >= 0 && magic_square[i][j] == 0) {
                magic_square[i][j] = prime_list[index];
                j--;
                index++;
            } else {
                direction++;
                i--;
                j++;
            }
        } else {
            if (i >= 0 && magic_square[i][j] == 0) {
                magic_square[i][j] = prime_list[index];
                i--;
                index++;
            } else {
                direction++;
                i++;
                j++;
            }
        }
    }
    
    for(int i=0; i<square_size; i++)
        for(int j=0; j<square_size; j++)
            printf(j+1 == square_size ? "%d\n" : "%d ", magic_square[i][j]);

    free(prime_list);
    for(int i=0; i<square_size; i++)
        free(magic_square[i]);
    free(magic_square);
}
```
