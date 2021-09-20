## Description

```
The given number 1123231334 can be splited as,
   11               123                   231                     334
eleven  billion  one hundred  million  two hundred  thousand  three hundred
	         twenty three           thirty one             thirty four
```

## Python

```python
# python 3.7.1

units = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
elevens = ["ten", "eleven", "twelve", "thirteen", "forteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
multiplier = ["","thousand", "million", "billion"]

def getHundred(n):
    s = ""
    if n > 99:
        s = units[n // 100] + " hundred "
        n %= 100
    if n > 9:
        if n // 10 == 1:
            s += elevens[n % 10] + " "
            n = 0
        elif n // 10 != 0:
            s += tens[n // 10] + " "
            n %= 10
        else:
            n %= 10
    if n != 0:
        s += units[n]

    return s.strip()


n = input()
m = len(n) // 3

if n == "0":
    print("zero")
else:
    o = ""

    while n:
        if len(n) % 3:
            o = getHundred(int(n[: len(n) % 3]))
            n = n[len(n) % 3 :]
            o += " " + multiplier[m] if multiplier[m] else ""
        else:
            h = getHundred(int(n[:3]))
            n = n[3:]
            m -= 1 if m else 0
            o += " " + h
            o += " " + multiplier[m] if h and multiplier[m] else ""
        o = o.strip()

    print(o)
```

## Java

```java
import java.util.*;
public class Dcoder {

	static String[] units = {"", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
	static String[] elevens = {"ten", "eleven", "twelve", "thirteen", "forteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"};
	static String[] tens = {"", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"};
	static String[] multiplier = {"", "thousand", "million", "billion"};

	static String getHundreds(int num) {
		String o = "";
	
		if (num > 99) {
			o = units[num / 100] + " hundred ";
			num %= 100;
		}
	
		if (num > 9) {
			if (num/10 == 1) {
				o += elevens[num % 10] + " ";
				num = 0;
			} else if (num/10 != 0) {
				o += tens[num / 10] + " ";
				num %= 10;
			} else {
				num %= 10;
			}
		}

		if (num != 0)
			o += units[num];
	
		return o.strip();
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		String n = sc.nextLine();
		int m = n.length()/3;

		if (n == "0") {
			System.out.println("zero");
		} else {
			String o = "";

			while (!n.isEmpty()) {
				if (n.length()%3 != 0) {
					o = getHundreds(Integer.parseInt(n.substring(0, n.length()%3)));
					n = n.substring(n.length() % 3);
					o += multiplier[m].isEmpty() ? "" : " "+multiplier[m];
				} else {
					String h = getHundreds(Integer.parseInt(n.substring(0, 3)));
					n = n.substring(3);
					m -= m > 0 ? 1 : 0;
					o += " "+h;
					o += multiplier[m].isEmpty() || h.isEmpty()  ? "" : " "+multiplier[m];
				}

				o = o.strip();
			}

			System.out.println(o);
		}

	}

}
```

## C

```c
#include <stdio.h>
#include <string.h>

char units[10][10] = {"", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};
char elevens[10][10] = {"ten", "eleven", "twelve", "thirteen", "forteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"};
char tens[10][10] = {"", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"};
char multiplier[4][10] = {"", "thousand", "million", "billion"};

int substr(char c[], int start, int end) {
    int n = 0;
    for(int i=start; i<end; i++) {
        n = n*10 + c[i]-'0';
    }
    return n;
}

void printHundreds(int num) {
    int space = 0;

    if(num > 99) {
        printf("%s hundred", units[num / 100]);
        num %= 100;
        space = 1;
    }

    if (num > 9) {
        if (num/10 == 1) {
            printf(space ? " %s" : "%s", elevens[num % 10]);
            num = 0;
        } else if (num/10 != 0) {
            printf(space ? " %s" : "%s", tens[num / 10]);
            num %= 10;
            space = 1;
        } else {
            num %= 10;
        }
    }

    if (num != 0)
        printf(space ? " %s" : "%s", units[num]);
}

void main() {

    char n[20];
    scanf("%s", &n);

    int m = strlen(n) / 3;

    if(strcmp(n, "0") == 0) {
        printf("zero");
    } else {
        int i = 0;
        int space = 0;

        while (i < strlen(n)) {
            if (i == 0 && strlen(n)%3 != 0) {
                printHundreds( substr(n, 0, strlen(n)%3) );
                printf(
                    strcmp(multiplier[m], "")==0
                    ? "" :
                    " %s",multiplier[m]
                );
                space = 1;
                i = strlen(n) % 3;
            } else {
                printf(space ? " " : "");
                printHundreds(substr(n, i, i+3));
                m -= m > 0 ? 1 : 0;
                printf(
                    strcmp(multiplier[m], "")==0 || substr(n, i, i+3)==0
                    ? "" :
                    " %s",multiplier[m]
                );
                space = substr(n, i, i+3)==0 ? 0 : 1;
                i += 3;
            }
        }
      
    }
    printf("\n");

}
```
