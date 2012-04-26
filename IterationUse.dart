iteration01(DartConsole dartConsole) {
  var list = [7, 12, 29, 57, 88, 111, 164, 222, 301];
  String result = iterationWithWhile(list);
  dartConsole.line('Iteration with while: $list');
  dartConsole.line(result);
}

iteration02(DartConsole dartConsole) {
  var list = [7, 12, 29, 57, 88, 111, 164, 222, 301];
  String result = iterationWithForIndex(list);
  dartConsole.line('Iteration with for index: $list');
  dartConsole.line(result);
}

iteration03(DartConsole dartConsole) {
  var list = [7, 12, 29, 57, 88, 111, 164, 222, 301];
  String result = iterationWithForEach(list);
  dartConsole.line('Iteration with for each: $list');
  dartConsole.line(result);
}
