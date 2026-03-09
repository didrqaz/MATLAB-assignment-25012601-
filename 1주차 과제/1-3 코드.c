#pragma warning(disable:4996)
#include <stdio.h>
#include <stdlib.h>
#include < string.h >

struct xy {
	int x, y;
};

int main() {

	char str[100];
	int check = 1;
	int i;
	scanf("%s", str);
	for (i = 0; i < strlen(str) / 2; i++) {
		if (str[i] != str[strlen(str) - i - 1]) {
			check = 0;
			break;
		}
	}
	printf("%d", check);


	return 0;
}