class InputSection {
  
  InputSection(DartConsole dartConsole) {
    InputElement inputField = document.query('#inputField');
    inputField.on.change.add((Event e) {
      String input = inputField.value.trim();
      dartConsole.sline('Input: ' + input);
      dartConsole.choice(input);
      dartConsole.prompt();
    });
  }
  
}
