// Based on
// http://blog.sethladd.com/2011/12/lists-and-arrays-in-dart.html

/**
 * Iteration with while loop.
 */
String iterationWithWhileLoop(List list) {
  String result = '';
  var i = 0;
  while (i < list.length) {
    result = '$result ${list[i]}';
    i += 1;
  }
  return result;
}

/**
 * Iteration with for loop.
 */
String iterationWithForLoop(List list) {
  String result = '';
  for (var i = 0; i < list.length; i++) {
    result = '$result ${list[i]}';
  }
  return result;
}

/**
 * Iteration with foreach.
 */
String iterationWithForeach(List list) {
  String result = '';
  for (var e in list) {
    result = '$result $e';
  }
  return result;
}
