## Description
```
If there are n players,
    there will be n-1 matches played by each player,
As match between player A vs player B
    and player B vs player A is same..
So, there will be total (n*(n-1))/2 matches...
But, here case is a player is playing 2 mathces against opponent...
So, answer will be n*(n-1)
```
## Python
```python
player = int(input())

print(player*(player-1))
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int player = sc.nextInt();

		System.out.println(player*(player-1));
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int player;
	scanf("%d", &player);

	printf("%d", player*(player-1));

}

```