part of example_console;

class InputSection {

  String subject = '';
  String example = '';

  InputSection(DartConsole dartConsole) {
    InputElement subjectInputField = document.querySelector('#subjectInputField');
    subjectInputField.onChange.listen((Event e) {
      subject = subjectInputField.value.trim();
      dartConsole.sline('Subject Input: $subject');
      dartConsole.displaySubjectTitle(subject);
      dartConsole.promptExamples(subject);
    });

    InputElement exampleInputField = document.querySelector('#exampleInputField');
    exampleInputField.onChange.listen((Event e) {
      example = exampleInputField.value.trim();
      dartConsole.sline('Subject Input: $subject');
      dartConsole.displaySubjectTitle(subject);
      dartConsole.sline('Example Input: $example');
      dartConsole.selectExample(subject, example);
      dartConsole.promptExamples(subject);
    });
  }

}
