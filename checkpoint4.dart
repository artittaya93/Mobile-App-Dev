import 'dart:io';
void main() {
  print("1.What is your name?");
  String? name = stdin.readLineSync();
  print("2.How many score does he/she have?");
  String? name1 = stdin.readLineSync();
  int score;
  if (name1?.isEmpty ?? true){
    score = 0;
  }else{
    score = int.parse(name1 ?? '0');
  }
  String grade = "E";
  if(score >= 80){
    grade = "A";
  } else if (score >= 70){
    grade = "B";
  } else if(score >= 60){
    grade = "C";
  } else if (score >= 50){
    grade = "D";
  }
  print("$name has a $name1 score Student grade $grade");

}