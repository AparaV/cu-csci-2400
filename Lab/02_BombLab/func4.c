#include <stdio.h>

int func4(int a, int b, int c) {
	int z1 = c - b;
	int z2 = z1 >> 31;
	z1 += z2;
	z1 = z1 >> 1;
	z2 = z1 + b;
	if (z2 > a) {
		c = z2 - 1;
		z1 = func4(a, b, c);
		return 2 * z1 + 1;
	}
	z1 = 0;
	if (z2 < a) {
		b = z2 + 1;
		z1 = func4(a, b, c);
	}
	return 2 * z1;
}

int main() {

	int i;
	for (i = 16; i < 47; ++i) {
		int result = func4(i, 16, 46);
		printf("%d : %d\n", i, result);
	}

	return 0;
}