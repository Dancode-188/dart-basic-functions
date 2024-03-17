void main() {
  // Task 1: Function to add two numbers
  double addTwo(double num1, double num2) {
    return num1 + num2;
  }

  // Task 2: Function to subtract two numbers
  double subtractTwo(double num1, double num2) {
    return num1 - num2;
  }

  // Task 3: Function to multiply two numbers
  double multiplyTwo(double num1, double num2) {
    return num1 * num2;
  }

  // Task 4: Function to divide two numbers
  double divideTwo(double num1, double num2) {
    if (num2 != 0) {
      return num1 / num2;
    } else {
      throw ArgumentError('Cannot divide by zero');
    }
  }

  // Task 5: Function to get the length of a string
  int stringLength(String inputString) {
    return inputString.length;
  }

  // Task 6: Function to get the first element of a list
  dynamic getFirstElement(List<dynamic> inputList) {
    if (inputList.isEmpty) {
      throw ArgumentError('List is empty');
    } else {
      return inputList.first;
    }
  }

  // Testing the functions
  print('Task 1: Add Two Numbers');
  print('5 + 3 = ${addTwo(5, 3)}');

  print('\nTask 2: Subtract Two Numbers');
  print('8 - 4 = ${subtractTwo(8, 4)}');

  print('\nTask 3: Multiply Two Numbers');
  print('6 * 7 = ${multiplyTwo(6, 7)}');

  print('\nTask 4: Divide Two Numbers');
  try {
    print('10 / 2 = ${divideTwo(10, 2)}');
    print('10 / 0 = ${divideTwo(10, 0)}'); // This will throw an error
  } catch (e) {
    print('Error: $e');
  }

  print('\nTask 5: Get Length of String');
  print('Length of "Dart Programming": ${stringLength("Dart Programming")}');

  print('\nTask 6: Get First Element of List');
  List<int> numbers = [10, 20, 30, 40, 50];
  print('First element of $numbers: ${getFirstElement(numbers)}');

  // Edge cases for Task 6
  List<String> emptyList = [];
  try {
    print('First element of empty list: ${getFirstElement(emptyList)}'); // This will throw an error
  } catch (e) {
    print('Error: $e');
  }
}
