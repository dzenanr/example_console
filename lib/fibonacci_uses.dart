part of example_console;

fibonacci1(DartConsole dartConsole) {
  int count = 11;
  String result = fibonacciIteration(count);
  dartConsole.sline('Fibonacci with iteration: sequence length ${count + 1} (including 0)');
  dartConsole.line(result);
}

fibonacci2(DartConsole dartConsole) {
  int position = 11;
  int positionNumber = fibonacciRecursion(position);
  dartConsole.sline('Fibonacci with recursion: position $position (positions start with 0)');
  dartConsole.line('Position number: $positionNumber');
}

fibonacci3(DartConsole dartConsole) {
  var map = new Map();
  map[0] = 0;
  map[1] = 1;
  int count = 11;
  fibonacciRecursionMap(count, map);
  dartConsole.sline('Fibonacci with recursion and map: sequence length ${count + 1} (including 0)');
  map.forEach((k,v) => dartConsole.line('$k: $v'));
}

fibonacci4(DartConsole dartConsole) {
  int count = 11;
  var map = fibonacciRecursionMapClosure(count);
  dartConsole.sline('Fibonacci with recursion, map and closure: sequence length ${count + 1} (including 0)');
  map.forEach((k,v) => dartConsole.line('$k: $v'));
}
