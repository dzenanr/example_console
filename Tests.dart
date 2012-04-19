void test1(DartConsole dartConsole) {
  int count = 10;
  String result = fibonacciIteration(count);
  dartConsole.line('Fibonacci with iteration: $count');
  dartConsole.line(result);
}

void test2(DartConsole dartConsole) {
  int count = 10;
  int result = fibonacciRecursion(count);
  dartConsole.line('Fibonacci with recursion: $count');
  dartConsole.line('$result');
}

void test3(DartConsole dartConsole) {
  var map = new Map();
  map[0] = 0;
  map[1] = 1;
  int count = 10;
  fibonacciRecursionMap(count, map);
  dartConsole.line('Fibonacci with recursion and map: $count');
  map.forEach((k,v) => dartConsole.line('$k: $v')); 
}
