String fibonacciIteration(int t) {
  int a = 0, b = 1, f = 1, n = 1;
  String result = '0' ' 1';
  while (n < t) {
    f = a + b;
    result = '$result $f';
    a = b; 
    b = f;
    n = n + 1;
  }
  return result;
}

int fibonacciRecursion(int t) {
  if (t == 0) {
    return 0;
  } else if (t == 1) {
    return 1;
  } else {
    return fibonacciRecursion(t-1) + fibonacciRecursion(t-2);
  }
}

int fibonacciRecursionMap(int n, Map map) {
  if (!map.containsKey(n)) {
    map[n] = fibonacciRecursionMap(n-1, map) + fibonacciRecursionMap(n-2, map);
  }
  return map[n];
}

