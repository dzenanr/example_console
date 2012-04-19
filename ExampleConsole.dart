#import('dart:html');
#source('InputSection.dart');
#source('OutputSection.dart');
#source('Examples.dart');
#source('Tests.dart');

class DartConsole {
  
  InputSection inputSection;
  OutputSection outputSection;
  
  DartConsole() {
    inputSection = new InputSection(this);
    outputSection = new OutputSection();
  }
  
  void line(String text) {
    outputSection.line(text);
  }
  
  void sline(String text) {
    outputSection.sline(text);
  }
  
  void title() {
    line('Dart Examples');
  }
  
  void prompt() {
    sline('Input 1 or 2 or 3: ');
    String examples = '''
    1. Fibonacci with iteration
    2. Fibonacci with recursion
    3. Fibonacci with recursion and map
    ''';
    line(examples);
  }
  
  void choice(String input) {
    if (input == '1') {
      test1(this);
    } else if (input == '2') {
      test2(this);
    } else if (input == '3') {
      test3(this);
    } else {
      line('Wrong choice!');
    }
  }
  
  void start() {
    title();
    prompt();
  }
  
}

void main() {
  new DartConsole().start();
}
