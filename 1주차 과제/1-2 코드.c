#pragma warning(disable:4996)
#include <stdio.h>
#include <stdlib.h>

int main() {

	int num, *div;//num: 약수 개수, div: 약수 집합
	int i, j, tmp;
	scanf("%d", &num);
	div = (int*)malloc(num * sizeof(int));
	for (i = 0; i < num; i++) {//약수 입력받기
		scanf("%d", &div[i]);
	}
	for (i = 0; i < num; i++) {//약수 오름차순 정렬
		for (j = 0; j < i; j++) {
			if (div[j] > div[i]) {
				tmp = div[i];
				div[i] = div[j];
				div[j] = tmp;
			}
		}
	}
	printf("%d", div[0] * div[num - 1]);//N(= 약수 최소값 * 최대값) 출력

	free(div);


	return 0;

}
