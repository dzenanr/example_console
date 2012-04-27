#import('dart:html');
#source('ConsoleSection.dart');
#source('InputSection.dart');
#source('OutputSection.dart');
#source('IterationExamples.dart');
#source('IterationUses.dart');
#source('FibonacciExamples.dart');
#source('FibonacciUses.dart');

class DartConsole extends ConsoleSection {

  void displayTitle() {
    line('Dart Examples');
  }

  void promptSubjects() {
    sline('Input Subject Number: ');
    String subjects = '''
    0. All Examples
    1. Dart Iteration
    2. Fibonacci Sequence
    ''';
    line(subjects);
  }

  void displaySubjectTitle(String subject) {
    if (subject == '0') {
      line('All Examples');
    } else if (subject == '1') {
      line('Iteration Examples');
    } else if (subject == '2') {
      line('Fibonacci Examples');
    }
  }

  void promptExamples(String subject) {
    if (subject == '0') {
      all();
    } else if (subject == '1') {
      sline('Input Example Number: ');
      String examples = '''
      1. Iteration with while
      2. Iteration with for (index)
      3. Iteration with for in
      4. Iteration with do
      5. Iteration with iterator
      6. Iteration with for each
      7. Iteration with for on text
      8. Iteration with for each on map
      9. Iteration with for each on map key
     10. Iteration with for each on map value
     11. Iteration with do on empty list
     12. Iteration with for in on text
      ''';
      line(examples);
    } else if (subject == '2') {
      sline('Input Example Number: ');
      String examples = '''
      1. Fibonacci with iteration
      2. Fibonacci with recursion
      3. Fibonacci with recursion and map
      4. Fibonacci with recursion, map and closure
      ''';
      line(examples);
    } else {
      line('Wrong subject!');
      promptSubjects();
    }
  }

  void selectExample(String subject, String example) {
    switch (subject) {
      case '1':
        if (example == '1') {
          iteration1(this);
        } else if (example == '2') {
          iteration2(this);
        } else if (example == '3') {
          iteration3(this);
        } else if (example == '4') {
          iteration4(this);
        } else if (example == '5') {
          iteration5(this);
        } else if (example == '6') {
          iteration6(this);
        } else if (example == '7') {
          iteration7(this);
        } else if (example == '8') {
          iteration8(this);
        } else if (example == '9') {
          iteration9(this);
        } else if (example == '10') {
          iteration10(this);
        } else if (example == '11') {
          iteration11(this);
        } else if (example == '12') {
          iteration12(this);
        } else {
          line('Wrong example!');
        }
        break;
      case '2':
        if (example == '1') {
          fibonacci1(this);
        } else if (example == '2') {
          fibonacci2(this);
        } else if (example == '3') {
          fibonacci3(this);
        } else if (example == '4') {
          fibonacci4(this);
        } else {
          line('Wrong example!');
        }
        break;
      default:
        line('Wrong subject!');
    }
  }

  all() {
    // Iteration
    iteration1(this);
    iteration2(this);
    iteration3(this);
    iteration4(this);
    iteration5(this);
    iteration6(this);
    iteration7(this);
    iteration8(this);
    iteration9(this);
    iteration10(this);
    iteration11(this);
    iteration12(this);
    // Fibonacci
    fibonacci1(this);
    fibonacci2(this);
    fibonacci3(this);
    fibonacci4(this);
  }

}

void main() {
  DartConsole dartConsole = new DartConsole();
  dartConsole.displayTitle();
  dartConsole.promptSubjects();
}
