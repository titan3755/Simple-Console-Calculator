// Simple calculator app

import "dart:io";

void main() {
  while (true) {
    calc();
    print("Enter to continue or type \"exit\" to exit the app...");
    String? userResponse = stdin.readLineSync();
    if (userResponse == "exit") {
      break;
    } else {
      continue;
    }
  }
}

void calc() {
  print("Enter two numbers separated by space: ");
  String? numbers = stdin.readLineSync();
  if (numbers == null) {
    print("Invalid input");
    return;
  } else {
    List<String>? nums = numbers.split(" ");
    if (nums.length != 2) {
      print("Invalid input");
      return;
    } else {
      int? num1 = int.tryParse(nums[0]);
      int? num2 = int.tryParse(nums[1]);
      if (num1 == null || num2 == null) {
        print("Invalid input");
        return;
      } else {
        print("Operator between these numbers: ");
        String? operation = stdin.readLineSync();
        if (operation == null) {
          print("Invalid input");
          return;
        } else {
          switch (operation) {
            case "+":
              print("Sum: ${num1 + num2}");
              break;
            case "-":
              print("Difference: ${num1 - num2}");
              break;
            case "*":
              print("Product: ${num1 * num2}");
              break;
            case "/":
              print("Quotient: ${num1 / num2}");
              break;
            default:
              print("Invalid input");
          }
        }
      }
    }
  }
}
