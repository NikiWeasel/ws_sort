
import 'package:ws_sort/ws_sort.dart' as ws_sort;

void shell (List <int> num){
  int d = 4;

  while (d > 0)
  {
    for (int i = d; i < num.length; i++)
    {
      int temp = num[i];
      int j = i;
      while(j>=d && num[j - d] > temp)
      {
        num[j] = num[j - d];
        j -= d;
      }
      num[j] = temp;
    }
    d = (d / 2).floor();
  }
  print(num.join(" "));
}

void main(List<String> arguments) {
  shell([ 20, 1, 19, 2, 18, 3, 17, 4, 16, 5, 15, 6, 14, 7, 13, 8, 12, 9, 11, 10]);
}
