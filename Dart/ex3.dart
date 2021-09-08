import 'dart:io';

main(List<String> arguments){
  List<int> list = [];

  while(true){
    print("Enter something!");
    String? str = stdin.readLineSync();

    if(isNumeric(str!)){
      list.add(int.parse(str));
    }
    else if(str == "exit") break;
    else print("Это не число");
      print("${list.length}\n");
  }
}

bool isNumeric(String str) {
  if(str == null) {
    return false;
  }
  return int.tryParse(str) != null;
}