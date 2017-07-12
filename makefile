OPT = -Wall -O0


all:    
		gcc $(OPT) -shared -o libregcur.so  -fPIC libregcur.c cos_tb.c
		gcc $(OPT) -shared -o libregspeed.so  -fPIC libregspeed.c cos_tb.c


cordic: test_cordic.c cos_tb.c
		gcc $(OPT) -o test_cordic  test_cordic.c cos_tb.c -lm

clean:
		rm *.so *.o test_cordic


