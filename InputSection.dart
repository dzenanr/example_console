class InputSection {

  String subject = '';
  String example = '';

  InputSection(DartConsole dartConsole) {
    InputElement subjectInputField = document.query('#subjectInputField');
    subjectInputField.on.change.add((Event e) {
      subject = subjectInputField.value.trim();
      dartConsole.sline('Subject Input: $subject');
      dartConsole.displaySubjectTitle(subject);
      dartConsole.promptExamples(subject);
    });

    InputElement exampleInputField = document.query('#exampleInputField');
    exampleInputField.on.change.add((Event e) {
      String example = exampleInputField.value.trim();
      dartConsole.sline('Subject Input: $subject');
      dartConsole.displaySubjectTitle(subject);
      dartConsole.sline('Example Input: $example');
      dartConsole.selectExample(subject, example);
      dartConsole.promptExamples(subject);
    });
  }

}
