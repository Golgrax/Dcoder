## Description
```
After taking inputs,
	use shoe size as key and store count of  L & R pair...
	then print sum of minimum of L & R for each size.
```


## Python
```python
shoes = {}

for _ in range(int(input())):
    size, type = input().split()
    shoe= shoes.get(size, [0,0])
    shoe[0 if type=='L' else 1] += 1
    shoes[size] = shoe

pairs = 0
for arr in shoes.values():
    pairs += min(arr)

print(pairs)
```


## Java
```java
import java.util.*;
public class Dcoder {

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		int n = sc.nextInt();
		sc.nextLine();

		int[][] shoes = new int[1001][2];
		for(int i=0; i<n; i++) {
			String[] s = sc.nextLine().trim().split(" ");
			int size = Integer.parseInt(s[0]);
			int type = s[1].charAt(0);
			
			shoes[size][type == 'L' ? 0 : 1]++;
		}

		int pairs = 0;
		for(int i=1; i<=1000; i++)
			pairs += Math.min(shoes[i][0], shoes[i][1]);

		System.out.println(pairs);
	}

}
```


## C
```c
#include <stdio.h>

void main() {

    int n;
    scanf("%d", &n);

    int shoes[1001][2];
    for(int i=1; i<=1000; i++)
        shoes[i][0] = shoes[i][1] = 0;
    
    for(int i=0; i<n; i++) {
        int size;
        char type;
        scanf("%d %c", &size, &type);
        printf("%d", size);

        shoes[size][type == 'L' ? 0 : 1]++;
    }

    int pairs = 0;
    for(int i=1; i<=1000; i++)
        pairs += shoes[i][0] < shoes[i][1] ? shoes[i][0] : shoes[i][1];

    printf("%d", pairs);

}
```
