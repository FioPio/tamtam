#include <tamtam_simulator.h>

#define T_MAX_ANIMATION                65 //seconds

#define W                               4.5 //angular speed
#define BASE_HEIGH                    110
#define STEP_HEIGH                      7
#define STEP_LATERAL                   15
#define STEP_FORWARD                    7

int main()
{
	float xd=0, xe=0, yd=0, ye=0, zd=BASE_HEIGH, ze=BASE_HEIGH, t=0;
	clock_t t_ant = clock();
	while(t<T_MAX_ANIMATION)
	{
		//moving the feets
		zd=BASE_HEIGH + STEP_HEIGH * sin(W*t);
		ze=BASE_HEIGH - STEP_HEIGH * sin(W*t);
		yd=-STEP_LATERAL * sin(W*t);
		ye=STEP_LATERAL * sin(W*t);
		xd=STEP_FORWARD * cos(W*t);
		xe=-STEP_FORWARD * cos(W*t);
		//yd= 10*sin (W*t);
		
		//printing the movement
		if(show_frame( xd, yd, zd, xe, ye, ze) ==27 ) return 0;
		t+= double(clock() - t_ant) / CLOCKS_PER_SEC;
		t_ant = clock();
	}
}
