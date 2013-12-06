//reverses string
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

char* reverse(char* string) {
	int len = strlen(string);
	char* return_s = string;

	if (!(len == 0 || string[0] == '\0')) {
		int i = 0;
		char gnirts[len];

		while(i <= len-2) {  //-1 to offset to array indices, -1 more for the /0 character
			gnirts[i] = string[(len-2)-i];
			i++;
		}

		gnirts[len] = string[len];
		return_s = gnirts;
	}

	return return_s;
}

int main(){
	char string[] = "abcdefg";

	puts (reverse(string));
	return 1;
}