import 'dart:math';

const int MAX = 1000;

main(List<String> arguments){
  var rand = new Random();
  var list = List<int>.generate(10, (index) => rand.nextInt(MAX));

  list.forEach((element) => {if(element % 2 == 0) print(element)});
}