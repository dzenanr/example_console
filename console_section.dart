class ConsoleSection {

  InputSection inputSection;
  OutputSection outputSection;

  ConsoleSection() {
    inputSection = new InputSection(this);
    outputSection = new OutputSection();
  }

  void line(String text) {
    outputSection.line(text);
  }

  void sline(String text) {
    outputSection.sline(text);
  }

}
