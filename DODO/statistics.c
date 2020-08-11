#include <stdlib.h>
#include <stdio.h>

int main(){
	File* f;
	double c;

	f = fopen("file.in", "r");
	if(f){
		while((c = getc(f)) != EOF){
			putchar(c);
		}
	}
	//f = fopen("file.in", "w");
	//fprintf(f, "this is a tmp file\n");

		
}

