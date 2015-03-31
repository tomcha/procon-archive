#include <stdio.h>

int main(){
  int n;
  char ch[101];
  int a[4];
  int min, max;
  int i;

  scanf("%d", &n);
  scanf("%s", ch);

  for(i = 0; i < 4; i++){
    a[i] = 0;
  }

  for(i = 0; i < n; i++){
    if(ch[i] == '1') a[0] += 1;
    if(ch[i] == '2') a[1] += 1;
    if(ch[i] == '3') a[2] += 1;
    if(ch[i] == '4') a[3] += 1;
  }

  min = n;
  max = 0;

  for(i = 0; i < 4; i++){
    if(min > a[i]) min = a[i];
    if(max < a[i]) max = a[i];
  }
  printf("%d %d\n", max, min);
  return 0;
}
