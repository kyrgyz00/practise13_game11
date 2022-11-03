import 'dart:io';
import 'dart:math';

void main() {
  head();
  
  // you_helper();
  // comp_helper();
}

void head() {
  print("Choose one game. you or computer?");
  String start = stdin.readLineSync()!;
  if (start == "you") {
    print("imagine a number from 1 till 100,be honest");
    String answer = "";
    int min = 0;
    int max = 100;
    int mid = (max + min) ~/ 2;
    int counter = 0;
    print(" greater or less $mid?");

    while (answer != "yes") {
      stdout.write("is it $mid ?");
      answer = stdin.readLineSync()!;
      if (answer == 'greater') {
        min = mid;
        mid = (max + min) ~/ 2;
        counter++;
      } else if (answer == "less") {
        max = mid;
        mid = (max + min) ~/ 2;
        counter++;
      } else if (answer == "yes") {
        print("the end of the game");
        counter++;
      } else {
        print("the $answer is not correct");
        answer = stdin.readLineSync()!;
      }
    }

    print("got it on $counter steps");
    print("$mid is your number");
  } else if (start == "computer") {
    int ima = (1 + Random().nextInt(100 - 1));
    // print(ima);
    print("write your example- it is between 1 and 100");
    int num = int.parse(stdin.readLineSync()!);
    int counter = 1;
    while (num != ima) {
      if (ima > num) {
        print("greater");
        num = int.parse(stdin.readLineSync()!);
        counter++;
      } else if (ima < num) {
        print("less");
        counter++;
        num = int.parse(stdin.readLineSync()!);
      } else if (ima == num) {
        print("the end of the game");
        counter++;
      } else {
        print("the $ima is not correct");
      }
    }
    print("$ima is my imagine number.");
    print("you got it $counter");
  } else {
    print("Choose correct one!");
    start = stdin.readLineSync()!;
  }
  print("Game over.");
}

you_helper() {
  print("imagine a number from 1 till 100,be honest");
  String answer = "";
  int min = 0;
  int max = 100;
  int mid = (max + min) ~/ 2;
  stdout.write(" greater or less $mid?");

  bool stopFunc = true;
  int counter = 0;

  while (answer != "yes") {
    stdout.write("is it $mid ?");
    answer = stdin.readLineSync()!;
    if (answer == 'greater') {
      min = mid;
      mid = (max + min) ~/ 2;
      counter++;
    } else if (answer == "less") {
      max = mid;
      mid = (max + min) ~/ 2;
      counter++;
    } else if (answer == "yes") {
      print("the end of the game");
      counter++;
    } else {
      print("the $answer is not correct");
      answer = stdin.readLineSync()!;
    }
  }

  print("got it on $counter steps");
  print("$answer is your number");
}

comp_helper() {
  int ima = (1 + Random().nextInt(100 - 1));
  // print(ima);
  int num = int.parse(stdin.readLineSync()!);
  int counter = 1;

  while (num != ima) {
    if (ima > num) {
      print("greater");
      num = int.parse(stdin.readLineSync()!);
      counter++;
    } else if (ima < num) {
      print("less");
      counter++;
      num = int.parse(stdin.readLineSync()!);
    } else if (ima == num) {
      print("the end of the game");
      counter++;
    } else {
      print("the $ima is not correct");
    }
  }
  print("$ima is my imagine number.");
  print("you got it $counter");
}
