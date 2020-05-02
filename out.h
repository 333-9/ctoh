#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <unistd.h>

struct test {
	int a;
	struct s {
		int i;
	};
	int b;
};

/*
 * multiline comment
 */

/* one line comment */
typedef struct typedef_s {
	int a;
	int b;
} typedef_t;

char * loop(char **code, int i);
inline void xm(char *a, i)    { a[i/8] = a[i/8]^1<<3-i%8; }
inline bool gm(char *a, i)    { return 1&a[i/8]>>3-i%8; }
inline void sm(char *a, i, b) { a[i/8] = (a[i/8]|1<<3-i%8)^!b<<3-i%8; }
char * boolfuck(char *code, char *in);
