
import 'dart:ffi';

import 'package:ws_sort/ws_sort.dart' as ws_sort;

void shell (List <Comparable> num){
  int d = 4;

  while (d > 0)
  {
    for (int i = d; i < num.length; i++)
    {
      var temp = num[i];
      int j = i;
      while(j>=d && num[j - d].compareTo(temp)==1)
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
  shell(["11111111", "11111", "11"]);
  shell([DateTime.now(), DateTime.utc(1989, 11, 9), DateTime.utc(2004, 8, 12)]);

}
