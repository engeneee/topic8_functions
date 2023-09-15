  //Task 1
//   int findMax(int a, int b, int c) {
//   int max = a;

//   if (b > max) {
//     max = b;
//   }

//   if (c > max) {
//     max = c;
//   }

//   return max;
// }

// void main() {
//   int num1 = 10;
//   int num2 = 25;
//   int num3 = 15;

//   int maxNumber = findMax(num1, num2, num3);

//   print(maxNumber);
// }

//Task 2
// int sumList(List<int> numbers) {
//   int sum = 0;
//   for (int number in numbers) {
//     sum += number;
//   }
//   return sum;
// }

// void main() {
//   List<int> sampleList = [8, 2, 3, 0, 7];
//   int result = sumList(sampleList);
//   print(result);
// }

//Task 3
// int multiplyList(List<int> numbers) {
//   int product = 1; 
//   for (int number in numbers) {
//     product *= number; 
//   }
//   return product;
// }

// void main() {
//   List<int> sampleList = [8, 2, 3, -1, 7];
//   int result = multiplyList(sampleList);
//   print(result);
// }

//Task 4
// String reverseString(String input) {
//   String reversed = '';
//   for (int i = input.length - 1; i >= 0; i--) {
//     reversed += input[i];
//   }
//   return reversed;
// }

// void main() {
//   String sampleString = "1234abcd";
//   String reversedString = reverseString(sampleString);
//   print(reversedString);
// }

//Task 5
// int factorial(int n) {
//   if (n == 0) {
//     return 1; 
//   } else {
//     return n * factorial(n - 1);
//   }
// }

// void main() {
//   int number = 5; 
//   int result = factorial(number);
//   print("Factorial of $number is: $result");
// }

//Task 6
// bool isInRange(int number, int lowerBound, int upperBound) {
//   return number >= lowerBound && number <= upperBound;
// }

// void main() {
//   int numberToCheck = 25;
//   int lowerBound = 10;
//   int upperBound = 50;

//   bool isWithinRange = isInRange(numberToCheck, lowerBound, upperBound);

//   if (isWithinRange) {
//     print("$numberToCheck is within the range [$lowerBound, $upperBound].");
//   } else {
//     print("$numberToCheck is outside the range [$lowerBound, $upperBound].");
//   }
// }

//Task 7
// void count(String input) {
//   int upperCase = 0;
//   int lowerCase = 0;

//   for (int i = 0; i < input.length; i++) {
//     if (input[i].toUpperCase() == input[i]) {
//       upperCase++;
//     } else if (input[i].toLowerCase() == input[i]) {
//       lowerCase++;
//     }
//   }

//   print(upperCase);
//   print(lowerCase);
// }

// void main() {
//   String sampleString = 'The quick Brow Fox';
//   count(sampleString);
// }

//Task 8
// List<int> getDistinctElements(List<int> inputList) {
//   Set<int> uniqueSet = Set<int>();
//   List<int> result = [];

//   for (int element in inputList) {
//     if (!uniqueSet.contains(element)) {
//       uniqueSet.add(element);
//       result.add(element);
//     }
//   }

//   return result;
// }

// void main() {
//   List<int> sampleList = [1, 2, 3, 3, 3, 3, 4, 5];
//   List<int> uniqueList = getDistinctElements(sampleList);

//   print(sampleList);
//   print(uniqueList);
// }

//Task 9
// bool isPrime(int number) {
//   if (number <= 1) {
//     return false; 
//   }

//   if (number == 2) {
//     return true; 
//   }

//   if (number % 2 == 0) {
//     return false;
//   }

//   for (int i = 3; i * i <= number; i += 2) {
//     if (number % i == 0) {
//       return false;
//     }
//   }

//   return true;
// }

// void main() {
//   int numberToCheck = 17; 
//   bool isNumberPrime = isPrime(numberToCheck);

//   if (isNumberPrime) {
//     print("Its a prime number.");
//   } else {
//     print("Its not a prime number.");
//   }
// }

//Task 10
// void printEvenNumbers(List<int> numbers) {
//   List<int> evenNumbers = [];

//   for (int number in numbers) {
//     if (number % 2 == 0) {
//       evenNumbers.add(number);
//     }
//   }

//   print(evenNumbers);
// }

// void main() {
//   List<int> sampleList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
//   printEvenNumbers(sampleList);
// }

//Task 11
// bool isPerfectNumber(int number) {
//   if (number <= 1) {
//     return false; 
//   }

//   int sumOfDivisors = 1; 

//   for (int i = 2; i <= number / 2; i++) {
//     if (number % i == 0) {
//       sumOfDivisors += i;
//     }
//   }

//   return sumOfDivisors == number;
// }

// void main() {
//   int numberToCheck = 28;
//   bool isPerfect = isPerfectNumber(numberToCheck);

//   if (isPerfect) {
//     print("Its a perfect number.");
//   } else {
//     print("Its not a perfect number.");
//   }
// }

//Task 13
// void printPascalsTriangle(int n) {
//   List<List<int>> triangle = [];

//   for (int i = 0; i < n; i++) {
//     List<int> row = [];
//     if (i == 0) {
//       row = [1];
//     } else {
//       for (int j = 0; j <= i; j++) {
//         if (j == 0 || j == i) {
//           row.add(1);
//         } else {
//           int sum = triangle[i - 1][j - 1] + triangle[i - 1][j];
//           row.add(sum);
//         }
//       }
//     }
//     triangle.add(row);
//   }
  
//   for (int i = 0; i < n; i++) {
//     String spaces = ' ' * (n - i);
//     String rowString = spaces + triangle[i].join(' ') + spaces;
//     print(rowString);
//   }
// }

// void main() {
//   int numRows = 5; 
//   printPascalsTriangle(numRows);
// }

//Task 14
// void outerFunction() {
//   print("This is the outer function.");

//   void innerFunction() {
//     print("This is the inner function.");
//   }
//   innerFunction();
// }

// void main() {
//   print("Starting the program.");
  
//   outerFunction();

//   print("Program finished.");
// }









