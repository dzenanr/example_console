class OutputSection {
  
  TextAreaElement outputArea;
  
  OutputSection() {
    outputArea = document.query('#outputArea');
  }
  
  void line(String text) {
    if (outputArea.value == '') {
      outputArea.value = text;
    } else {
      outputArea.value = outputArea.value + '\n' + text;
    }    
  }
  
  void sline(String text) {
    outputArea.value = outputArea.value + '\n' + '';
    outputArea.value = outputArea.value + '\n' + text;
  }
  
}
