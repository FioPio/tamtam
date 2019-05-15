#include <tamtam_simulator.h>

#define t_MAX_ANIMATION                65 //seconds

#define T_WALKING                       2
#define BASE_HEIGH                    107.5
#define STEP_HEIGH                     15
#define STEP_LATERAL                   35
#define STEP_FORWARD                   22.5
#define W              (2.0*PI)/T_WALKING

int main()
{
	float xd=0, xe=0, yd=0, ye=0, zd=BASE_HEIGH, ze=BASE_HEIGH, t=0;
	char step=0;
	clock_t t_ant = clock();
	while(t<t_MAX_ANIMATION)
	{
		switch(step)
		{
			case  0:
				yd=-STEP_LATERAL * sin(W*t);
				ye= STEP_LATERAL * sin(W*t);
				if(t > T_WALKING/4.0 )
				{
					t  = 0;
					yd = -STEP_LATERAL ;
					ye = STEP_LATERAL ;
					step++;
				}
				break;
				
			case  1:
				ze= BASE_HEIGH-STEP_HEIGH * sin(W*t);
				xe= STEP_FORWARD * sin(W*t/2.0);
				if(t > T_WALKING/2.0 )
				{
					t  = 0;
					ze = BASE_HEIGH;
					xe = STEP_FORWARD;
					step++;
				}
				break;
				
			case  2://Canvi de pes del dret a l'esquerre
				xe= STEP_FORWARD * cos(W*t/2.0);
				xd= STEP_FORWARD * (cos(W*t/2.0)-1);
				yd=-STEP_LATERAL * cos(W*t);
				ye= STEP_LATERAL * cos(W*t);
				if(t > T_WALKING/2.0 )
				{
					t  = 0;
					xe = 0;
					xd = -STEP_FORWARD ;
					yd = STEP_LATERAL ;
					ye = -STEP_LATERAL ;
					step++;
				}
				break;
				
			case  3:
				zd = BASE_HEIGH-STEP_HEIGH * sin(W*t);
				xd = -STEP_FORWARD * cos(W*t);
				if(t > T_WALKING/2.0 )
				{
					t  = 0;
					zd = BASE_HEIGH;
					xd = STEP_FORWARD;
					step++;
				}
				break;
				
			case  4:
				xe= STEP_FORWARD * (cos(W*t/2.0)-1);
				xd= STEP_FORWARD * cos(W*t/2.0);
				yd= STEP_LATERAL * cos(W*t);
				ye= -STEP_LATERAL * cos(W*t);
				if(t > T_WALKING/2.0 )
				{
					t  = 0;
					xe = -STEP_FORWARD;
					xd = 0 ;
					yd = -STEP_LATERAL ;
					ye = STEP_LATERAL ;
					step++;
				}
				break;
				
			case  5:
				ze= BASE_HEIGH-STEP_HEIGH * sin(W*t);
				xe= - STEP_FORWARD * cos(W*t);
				if(t > T_WALKING/2.0 )
				{
					t  = 0;
					ze = BASE_HEIGH ;
					xe = STEP_FORWARD;
					step=2;
				}
				break;
		}
		
		
		//printing the movement
		if(show_frame( xd, yd, zd, xe, ye, ze) ==27 ) return 0;
		t+= double(clock() - t_ant) / CLOCKS_PER_SEC;
		t_ant = clock();
	}
}
