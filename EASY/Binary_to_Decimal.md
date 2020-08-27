## Description
```
Convert binary to decimal using formula...
sum of all dbit where dbit=bbit*2^(iindex from right) 
```
## Python
```python
binary = input()

print(int(binary, 2))
```
## Java
```java
import java.util.*;

public class Dcoder {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		String binary = sc.nextLine();

		System.out.println(Integer.parseInt(binary, 2));
	}
}
```
## C
```c
#include <stdio.h>
#include <math.h>

void main() {

	int binary;
	scanf("%d", &binary);

	int decimal=0, i=0;
	while (binary > 0) {
		int digit = binary%10;
		decimal += digit*pow(2, i);
		i++;
		binary /= 10;
	}
	
	printf("%d\n", decimal);

}

```