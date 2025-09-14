// Main function untuk menguji semua fungsi
void main() {
  // Menguji Barisan Fibonacci
  int fib_result = fibonacci(10);
  print('Barisan Fibonacci ke-10 adalah: $fib_result');

  // Menguji Faktorial
  int fact_result = factorial(5);
  print('Faktorial dari 5 adalah: $fact_result');

  // Menguji Angka Biner
  String binary_result = toBinary(42);
  print('Angka biner dari 42 adalah: $binary_result');
}

// 1. Barisan Fibonacci
int fibonacci(int n) {
  if (n < 0) {
    throw ArgumentError('Input tidak boleh negatif.');
  }
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// 2. Faktorial
int factorial(int n) {
  if (n < 0) {
    throw ArgumentError('Input tidak boleh negatif.');
  }
  if (n == 0) {
    return 1;
  }
  return n * factorial(n - 1);
}

// 3. Angka Biner
String toBinary(int n) {
  if (n < 0) {
    throw ArgumentError('Input tidak boleh negatif.');
  }
  return n.toRadixString(2);
}