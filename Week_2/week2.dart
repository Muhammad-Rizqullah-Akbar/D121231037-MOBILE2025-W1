// main() function untuk menguji semua fungsi
void main() {
  // Menguji Barisan Fibonacci
  int fibResult = fibonacciIterative(10);
  print('Barisan Fibonacci ke-10 adalah: $fibResult');

  // Menguji Faktorial
  int factResult = factorialIterative(5);
  print('Faktorial dari 5 adalah: $factResult');

  // Menguji Angka Biner
  String binaryResult = toBinaryArrow(42);
  print('Angka biner dari 42 adalah: $binaryResult');
}

// 1. Barisan Fibonacci (Iteratif)
int fibonacciIterative(int n) {
  if (n < 0) {
    throw ArgumentError('Input tidak boleh negatif.');
  }
  if (n <= 1) {
    return n;
  }
  int a = 0;
  int b = 1;
  for (int i = 2; i <= n; i++) {
    int temp = a + b;
    a = b;
    b = temp;
  }
  return b;
}

// 2. Faktorial (Iteratif)
int factorialIterative(int n) {
  if (n < 0) {
    throw ArgumentError('Input tidak boleh negatif.');
  }
  if (n == 0) {
    return 1;
  }
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}

// 3. Angka Biner (Arrow Function)
String toBinaryArrow(int n) => n.toRadixString(2);