/*************************************************************************
	> File Name: 7-20.c
	> Author: leiss
	> Mail: lss.linux@gmail.com 
	> Created Time: Sun 08 Dec 2013 02:21:22 AM CST
 ************************************************************************/


extern int p3(void);

int x = 1;
int *xp = &x;
void p2(int y) {
}

void p1() {
	p2(*xp + p3());
	p2(1);
}
