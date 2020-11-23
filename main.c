#include <stdio.h>
#include "myMath.h"

int main (){
  double x=0;
  printf("Please insert a real number:");
  scanf("%le", &x);
  float fun1 = sub (add(Exp((int) x),Pow(x,3)), 2);
  float fun2 = add (mul(x,3), mul(Pow(x,2),2));
  float fun3 = sub(div(mul(Pow(x,3),4),5),mul(x,2));
  printf("\nThe value of f(x) = e^x+x^3-2 at the point %.4f is: %.4f\n", x,fun1);
  printf("The value of f(x) = 3x+2X^2 at the point %.4f is: %.4f\n", x,fun2);
  printf("The value of f(x) = (4x^3)/5-2x at the point %.4f is: %.4f\n", x,fun3);
  return 0;
}
