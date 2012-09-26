iteration1(DartConsole dartConsole) {
  var list = [7, 12, 29, 57, 88, 111, 164, 222, 301];
  String result = iterationWhile(list);
  dartConsole.sline('Iteration with while: $list');
  dartConsole.line(result);
}

iteration2(DartConsole dartConsole) {
  var list = [7, 12, 29, 57, 88, 111, 164, 222, 301];
  String result = iterationFor(list);
  dartConsole.sline('Iteration with for (index): $list');
  dartConsole.line(result);
}

iteration3(DartConsole dartConsole) {
  var list = [7, 12, 29, 57, 88, 111, 164, 222, 301];
  String result = iterationForIn(list);
  dartConsole.sline('Iteration with for in: $list');
  dartConsole.line(result);
}

iteration4(DartConsole dartConsole) {
  var list = [7, 12, 29, 57, 88, 111, 164, 222, 301];
  String result = iterationDo(list);
  dartConsole.sline('Iteration with do: $list');
  dartConsole.line(result);
}

iteration5(DartConsole dartConsole) {
  var list = [7, 12, 29, 57, 88, 111, 164, 222, 301];
  String result = iterationIterator(list);
  dartConsole.sline('Iteration with iterator: $list');
  dartConsole.line(result);
}

iteration6(DartConsole dartConsole) {
  var list = [7, 12, 29, 57, 88, 111, 164, 222, 301];
  String result = iterationForEach(list);
  dartConsole.sline('Iteration with for each: $list');
  dartConsole.line(result);
}

iteration7(DartConsole dartConsole) {
  var city = "Sarajevo";
  String result = iterationForString(city);
  dartConsole.sline('Iteration with for on text: $city');
  dartConsole.line(result);
}

iteration8(DartConsole dartConsole) {
  var map = {'gold': 1, 'silver': 2, 'bronze': 3};
  String result = iterationForEachMap(map);
  dartConsole.sline('Iteration with for each on map: $map');
  dartConsole.line(result);
}

iteration9(DartConsole dartConsole) {
  var map = {'gold': 1, 'silver': 2, 'bronze': 3};
  String result = iterationForEachMapKey(map);
  dartConsole.sline('Iteration with for each on map key: $map');
  dartConsole.line(result);
}

iteration10(DartConsole dartConsole) {
  var map = {'gold': 1, 'silver': 2, 'bronze': 3};
  String result = iterationForEachMapValue(map);
  dartConsole.sline('Iteration with for each on map value: $map');
  dartConsole.line(result);
}

iteration11(DartConsole dartConsole) {
  var list = [];
  dartConsole.sline('Iteration with do on empty list: $list');
  try {
    String result = iterationDo(list);
    dartConsole.line(result);
  } on IndexOutOfRangeException catch (e) {
    dartConsole.line('Error: ${e.toString()}');
  }
}

iteration12(DartConsole dartConsole) {
  var city = "Sarajevo";
  dartConsole.sline('Iteration with for in on text: $city');
  try {
    String result = iterationForInString(city);
    dartConsole.line(result);
  } on Exception catch (e) {
    dartConsole.line('Error: ${e.toString()}');
  }
}

iteration13(DartConsole dartConsole) {
  var city = "Sarajevo";
  dartConsole.sline('Iteration with for in on split text: $city');
  try {
    String result = iterationForInSplitString(city);
    dartConsole.line(result);
  } on Exception catch (e) {
    dartConsole.line('Error: ${e.toString()}');
  }
}
