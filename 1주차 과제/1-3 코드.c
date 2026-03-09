#pragma warning(disable:4996)
#include <stdio.h>
#include <stdlib.h>
#include < string.h >

struct xy {
	int x, y;
};

int main() {

	char str[100];//str: 입력받는 단어
	int check = 1;//check:  팰린드롬인지 여부. 1이면 팰린드롬, 0이면 팰린드롬 아님
	int i;
	scanf("%s", str);
	for (i = 0; i < strlen(str) / 2; i++) {//단어의 1/2를 순회하여 양끝의 i번째 단어가 서로 같은지 확인
		if (str[i] != str[strlen(str) - i - 1]) {
			check = 0;
			break;
		}
	}
	printf("%d", check);//팰린드롬 여부 출력


	return 0;

}
