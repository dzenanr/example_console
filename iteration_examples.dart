part of example_console;

// Based on
// http://blog.sethladd.com/2011/12/lists-and-arrays-in-dart.html

/**
 * Iteration with while.
 */
String iterationWhile(List list) {
  String result = '';
  var i = 0;
  while (i < list.length) {
    result = '$result ${list[i]}';
    i += 1;
  }
  return result;
}

/**
 * Iteration with for.
 */
String iterationFor(List list) {
  String result = '';
  for (var i = 0; i < list.length; i++) {
    result = '$result ${list[i]}';
  }
  return result;
}

/**
 * Iteration with for in.
 */
String iterationForIn(List list) {
  String result = '';
  for (var e in list) {
    result = '$result $e';
  }
  return result;
}

/**
 * Iteration with do.
 */
String iterationDo(List list) {
  String result = '';
  var i = 0;
  if (list.length > 0) {
    do {
      result = '$result ${list[i]}';
      i += 1;
    } while (i < list.length);
  }
  return result;
}

/**
 * Iteration with iterator.
 */
String iterationIterator(List list) {
  String result = '';
  Iterator i = list.iterator;
  while (i.moveNext()) {
    result = '$result ${i.current}';
  }
  return result;
}

/**
 * Iteration with for each.
 */
String iterationForEach(List list) {
  String result = '';
  list.forEach((e) => result = '$result $e');
  return result;
}

/**
 * Iteration with for on text.
 */
String iterationForString(String text) {
  String result = '';
  for (var i = 0; i < text.length; i++) {
    result = '$result ${text[i]}';
  }
  return result;
}

/**
 * Iteration with for each on map.
 */
String iterationForEachMap(Map map) {
  String result = '';
  map.forEach((k, v) => result = '$result $k: $v');
  return result;
}

/**
 * Iteration with for each on map key.
 */
String iterationForEachMapKey(Map map) {
  String result = '';
  var keys = map.keys;
  keys.forEach((k) => result = '$result $k');
  return result;
}

/**
 * Iteration with for each on map value.
 */
String iterationForEachMapValue(Map map) {
  String result = '';
  var values = map.values;
  values.forEach((v) => result = '$result $v');
  return result;
}

/**
 * Iteration with for in on text.
 */
String iterationForInString(String text) {
  String result = '';
  for (var v in text.split('')) {
    result = '$result $v';
  }
  return result;
}

/**
 * Iteration with for in on split text.
 * Proposed by Richard Griffith.
 */
String iterationForInSplitString(String text) {
  String result = '';
  for (var v in text.split('')) {
    result = '$result $v';
  }
  return result;
}
