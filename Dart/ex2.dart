import 'dart:io';

main(List<String> arguments){
  while(true){
    print("Enter something!");
    String? str = stdin.readLineSync();

    if(isNumeric(str!))
      print(str+"\n");
    else print("Это не число\n");
  }
}

bool isNumeric(String str) {
  if(str == null) {
    return false;
  }
  return int.tryParse(str) != null;
}