void main() {
  // Define and initialize variables of different types
  int myInt = 10;
  double myDouble = 20.5;
  String myString = "Hello, Dart!";
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];

  print("Integer: $myInt");
  print("Double: $myDouble");
  print("String: $myString");
  print("Boolean: $myBool");
  print("List: $myList");

  // Type conversion functions
  print("\nType Conversion:");
  convertStringToIntAndDouble("123");
  convertIntToStringAndDouble(42);

  // Control Flow examples
  print("\nControl Flow:");
  checkNumber(0);
  checkVotingEligibility(19);

  // Switch Case example
  print("\nSwitch Case:");
  printDayOfWeek(4);

  // Loops example
  print("\nLoops:");
  printNumbersUsingForLoop();
  printNumbersUsingWhileLoop();
  printNumbersUsingDoWhileLoop();

  // Combining Data Types and Control Flow
  print("\nCombining Data Types and Control Flow:");
  List<int> numbers = [3, 25, 130];
  analyzeNumbers(numbers);
}

void convertStringToIntAndDouble(String value) {
  int intValue = int.parse(value);
  double doubleValue = double.parse(value);
  print("String '$value' to int: $intValue");
  print("String '$value' to double: $doubleValue");
}

void convertIntToStringAndDouble(int value) {
  String stringValue = value.toString();
  double doubleValue = value.toDouble();
  print("Int '$value' to String: $stringValue");
  print("Int '$value' to double: $doubleValue");
}

void convertAndDisplay(String value) {
  int intValue = int.parse(value);
  double doubleValue = double.parse(value);
  print("Converted String '$value' to int: $intValue and double: $doubleValue");
}

void checkNumber(int num) {
  if (num > 0) {
    print("The number is positive.");
  } else if (num < 0) {
    print("The number is negative.");
  } else {
    print("The number is zero.");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("Eligible to vote.");
  } else {
    print("Not eligible to vote.");
  }
}

void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day.");
  }
}

void printNumbersUsingForLoop() {
  print("For Loop (1 to 10):");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void printNumbersUsingWhileLoop() {
  print("While Loop (10 to 1):");
  int i = 10;
  while (i > 0) {
    print(i);
    i--;
  }
}

void printNumbersUsingDoWhileLoop() {
  print("Do-While Loop (1 to 5):");
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

void analyzeNumbers(List<int> numbers) {
  for (int number in numbers) {
    print("\nNumber: $number");

    // Check if even or odd
    if (number % 2 == 0) {
      print("$number is even.");
    } else {
      print("$number is odd.");
    }

    // Categorize numbers
    switch (number) {
      case 1 ... 10:
        print("Category: Small");
        break;
      case 11 ... 100:
        print("Category: Medium");
        break;
      default:
        print("Category: Large");
    }
  }
}
