double Pow (double x,int y){
  double ans = 1;
  if (y == 0)
      return 1;
  if(y<0)
  {
      for (int i = 0; i < y; i++)
      {
          ans = ans / x;
      }
  }
  else
  {
      for (int i = 0; i < y; i++)
      {
          ans = ans * x;
      }
  }
  return ans;
  
}
double Exp (int x){
  double e = 1;
  for (int i = 10; i > 0; --i ) {
    e = 1 + e / i;
  }
  return Pow(e,x);
}
