// Based on 
// http://en.literateprograms.org/Fibonacci_numbers_(Python) 
// http://en.wikipedia.org/wiki/Memoization

/** 
 * Iteration with memory.
 */
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

/** 
 * Pure recursion.
 * It does not return a sequence of numbers (no memoization), 
 * but only the last number. 
 */
int fibonacciRecursion(int t) {
  if (t == 0) {
    return 0;
  } else if (t == 1) {
    return 1;
  } else {
    return fibonacciRecursion(t-1) + fibonacciRecursion(t-2);
  }
}

/** 
 * Updating a function parameter is not functional programming.
 * http://www.defmacro.org/ramblings/fp.html
 * http://try.dartlang.org/s/Vno9 
 */
int fibonacciRecursionMap(int n, Map map) {
  if (!map.containsKey(n)) {
    map[n] = fibonacciRecursionMap(n-1, map) + fibonacciRecursionMap(n-2, map);
  }
  return map[n];
}

/** 
 * A closure is any function which closes over the environment in which it is defined. 
 * This means that it can access variables not in its parameter list.
 * Wikipedia link : http://en.wikipedia.org/wiki/Closure_(computer_science) .
 * A closure (also lexical closure or function closure) is a function together 
 * with a referencing environment for the non-local variables of that function. 
 * A closure allows a function to access variables outside its immediate lexical scope.
 * Simple example: http://try.dartlang.org/s/l_E8 .
 * http://www.dartlang.org/language-tour/#functions
 * http://try.dartlang.org/s/MCw9
 */
Map fibonacciRecursionMapClosure(int n) {
  var map = new Map();
  map[0] = 0; map[1] = 1;
  int fib(int p) {
    if (!map.containsKey(p)) {
      map[p] = fib(p - 1) + fib(p - 2);
    }
    return map[p];
  }
  fib(n);
  return map;
}

