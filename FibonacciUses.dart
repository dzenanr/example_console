fibonacci1(DartConsole dartConsole) {
  int count = 10;
  String result = fibonacciIteration(count);
  dartConsole.line('Fibonacci with iteration: $count');
  dartConsole.line(result);
}

fibonacci2(DartConsole dartConsole) {
  int count = 10;
  int result = fibonacciRecursion(count);
  dartConsole.line('Fibonacci with recursion: $count');
  dartConsole.line('$result');
}

fibonacci3(DartConsole dartConsole) {
  var map = new Map();
  map[0] = 0;
  map[1] = 1;
  int count = 10;
  fibonacciRecursionMap(count, map);
  dartConsole.line('Fibonacci with recursion and map: $count');
  map.forEach((k,v) => dartConsole.line('$k: $v'));
}

fibonacci4(DartConsole dartConsole) {
  int count = 10;
  var map = fibonacciRecursionMapClosure(count);
  dartConsole.line('Fibonacci with recursion, map and closure: $count');
  map.forEach((k,v) => dartConsole.line('$k: $v'));
}
