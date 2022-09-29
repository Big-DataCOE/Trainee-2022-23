/* Bear Limak wants to become the largest of bears, or at least to become larger than his brother Bob.

Right now, Limak and Bob weigh a and b respectively. It's guaranteed that Limak's weight is smaller than or equal to his brother's weight.

Limak eats a lot and his weight is tripled after every year, while Bob's weight is doubled after every year.

After how many full years will Limak become strictly larger (strictly heavier) than Bob? */

#include <stdio.h>
void main()
{
	int x,y, i=0;
	scanf("%d %d", &x, &y);
	while(x<=y)
	{
		x=x*3;
		y=y*2;
		i++;
		
	}
	printf("%d", i);
	}

