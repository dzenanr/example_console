iteration1(DartConsole dartConsole) {
  var list = [7, 12, 29, 57, 88, 111, 164, 222, 301];
  String result = iterationWithWhileLoop(list);
  dartConsole.line('Iteration with while: $list');
  dartConsole.line(result);
}

iteration2(DartConsole dartConsole) {
  var list = [7, 12, 29, 57, 88, 111, 164, 222, 301];
  String result = iterationWithForLoop(list);
  dartConsole.line('Iteration with for index: $list');
  dartConsole.line(result);
}

iteration3(DartConsole dartConsole) {
  var list = [7, 12, 29, 57, 88, 111, 164, 222, 301];
  String result = iterationWithForeach(list);
  dartConsole.line('Iteration with for each: $list');
  dartConsole.line(result);
}
