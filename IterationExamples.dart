

/**
 * Iteration with while.
 */
String iterationWithWhile(List list) {
  String result = '';
  var i = 0;
  while (i < list.length) {
    result = '$result ${list[i]}';
    i += 1;
  }
  return result;
}

/**
 * Iteration with for index.
 */
String iterationWithForIndex(List list) {
  String result = '';
  for (var i = 0; i < list.length; i++) {
    result = '$result ${list[i]}';
  }
  return result;
}

/**
 * Iteration with for each.
 */
String iterationWithForEach(List list) {
  String result = '';
  for (var e in list) {
    result = '$result $e';
  }
  return result;
}
