#import('dart:html');
#source('ConsoleSection.dart');
#source('InputSection.dart');
#source('OutputSection.dart');
#source('IterationExamples.dart');
#source('IterationUse.dart');
#source('FibonacciExamples.dart');
#source('FibonacciUse.dart');

class DartConsole extends ConsoleSection {

  void displayTitle() {
    line('Dart Examples');
  }

  void promptSubjects() {
    sline('Input Subject 1 or 2: ');
    String subjects = '''
    1. Dart Iteration
    2. Fibonacci Sequence
    ''';
    line(subjects);
  }

  void displaySubjectTitle(String subject) {
    if (subject == '1') {
      line('Iteration Examples');
    } else if (subject == '2') {
      line('Fibonacci Examples');
    }
  }

  void promptExamples(String subject) {
    if (subject == '1') {
      sline('Input Example 1, 2 or 3: ');
      String examples = '''
      1. Iteration with while
      2. Iteration with for index
      3. Iteration with for each
      ''';
      line(examples);
    } else if (subject == '2') {
      sline('Input Example 1, 2, 3 or 4: ');
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
    if (subject == '1') {
      if (example == '1') {
        iteration01(this);
      } else if (example == '2') {
        iteration02(this);
      } else if (example == '3') {
        iteration03(this);
      } else {
        line('Wrong example!');
      }
    } else if (subject == '2') {
      if (example == '1') {
        fibonacci01(this);
      } else if (example == '2') {
        fibonacci02(this);
      } else if (example == '3') {
        fibonacci03(this);
      } else if (example == '4') {
        fibonacci04(this);
      } else {
        line('Wrong example!');
      }
    } else {
      line('Wrong subject!');
    }

  }

}

void main() {
  DartConsole dartConsole = new DartConsole();
  dartConsole.displayTitle();
  dartConsole.promptSubjects();
}
