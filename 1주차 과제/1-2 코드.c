#pragma warning(disable:4996)
#include <stdio.h>
#include <stdlib.h>
#include < string.h >

int main() {

	int num, *div;
	int i, j, tmp;
	scanf("%d", &num);
	div = (int*)malloc(num * sizeof(int));
	for (i = 0; i < num; i++) {
		scanf("%d", &div[i]);
	}
	for (i = 0; i < num; i++) {
		for (j = 0; j < i; j++) {
			if (div[j] > div[i]) {
				tmp = div[i];
				div[i] = div[j];
				div[j] = tmp;
			}
		}
	}
	printf("%d", div[0] * div[num - 1]);

	free(div);


	return 0;
}