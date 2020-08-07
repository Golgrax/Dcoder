## Description
```
```
## Python
```python
print(f"Dc{'o'*int(input())}der")
```
## Java
```java
import java.util.*;

public class zztemp {
	public static void main(String[] args) {		
		Scanner sc= new Scanner(System.in);

		int l = sc.nextInt();

		System.out.print("Dc");
		for (int i=0; i<l; i++)
			System.out.print("o");
		System.out.println("der");
	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int l;
	scanf("%d", &l);

	printf("Dc");
	for (int i=0; i<l; i++)
		printf("o");
	printf("der\n"); 

}

```