## Description
```
In this problem, 
	we have to maximize value of treasure,
We are going to use Knapsack approch.
First we will take ratio of value by weight of both treasure.
The tresure with max ratio will be taken first, then second treasure.
Please note, compare remainingCapacity with weight of treasure T before adding T.
It might be possible,
	You are not able to take any treasure 
	or both the treasure....
```
## Python
```python
maxWeight = int(input())

value1, weight1 = map(int, input().split())
ratio1 = value1 / weight1
value2, weight2 = map(int, input().split())
ratio2 = value2 / weight2

remainingCapacity = maxWeight
maxValue = 0

if ratio1 > ratio2:
    if remainingCapacity >= weight1:
        remainingCapacity -= weight1
        maxValue += value1
    if remainingCapacity >= weight2:
        maxValue += value2
else:
    if remainingCapacity >= weight2:
        remainingCapacity -= weight2
        maxValue += value2
    if remainingCapacity >= weight1:
        maxValue += value1

print(maxValue)
```
## Java
```java
import java.util.*;

public class zztemp {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int maxWeight = sc.nextInt();

		int value1 = sc.nextInt();
		int weight1 = sc.nextInt();
		float ratio1 = value1/(weight1*1.0f);
		int value2 = sc.nextInt();
		int weight2 = sc.nextInt();
		float ratio2 = value2/(weight2*1.0f);

		int remainingCapacity = maxWeight;
		int maxValue = 0;

		if ( ratio1 > ratio2 ) {
			if ( remainingCapacity >= weight1 ) {
				remainingCapacity -= weight1;
				maxValue += value1;
			}
			if ( remainingCapacity >= weight2 ) {
				maxValue += value2;
			}
		} else {
			if ( remainingCapacity >= weight2 ) {
				remainingCapacity -= weight2;
				maxValue += value2;
			}
			if ( remainingCapacity >= weight1 ) {
				maxValue += value1;
			}
		}

		System.out.println(maxValue);

	}
}
```
## C
```c
#include <stdio.h>

void main() {

	int maxWeight;
	scanf("%d", &maxWeight);

	int value1, weight1;
	scanf("%d", &value1);
	scanf("%d", &weight1);
	float ratio1 = value1/(weight1*1.0);
	int value2, weight2;
	scanf("%d", &value2);
	scanf("%d", &weight2);
	float ratio2 = value2/(weight2*1.0);

	int remainingCapacity = maxWeight;
	int maxValue = 0;

	if ( ratio1 > ratio2 ) {
		if ( remainingCapacity >= weight1 ) {
			remainingCapacity -= weight1;
			maxValue += value1;
		}
		if ( remainingCapacity >= weight2 ) {
			maxValue += value2;
		}
	}
	else {
		if ( remainingCapacity >= weight2 ) {
			remainingCapacity -= weight2;
			maxValue += value2;
		}
		if ( remainingCapacity >= weight1 ) {
			maxValue += value1;
		}
	}

	printf("%d", maxValue);

}
```