const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question('Masukkan bilangan bulat (minimal 0): ', (input) => {
  let n = parseInt(input);

  if (isNaN(n) || n < 0) {
    console.log("Input tidak valid. Harus bilangan bulat >= 0.");
  } else {
    function fibonacci(num) {
      if (num === 0) return 0;
      if (num === 1) return 1;
      return fibonacci(num - 1) + fibonacci(num - 2);
    }

    console.log(`Bilangan Fibonacci ke-${n} adalah: ${fibonacci(n)}`);
  }

  rl.close();
});
