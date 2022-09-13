class TermOfService {
  String id;
  bool mandatory;
  String text;
  String? linkUrl;
  String validationErrorMessage;
  bool initialValue;
  bool _checked = false;
  Future<void> Function(String url)? urlLauncher;

  TermOfService(
      {required this.id,
      required this.mandatory,
      required this.text,
      this.linkUrl,
      this.initialValue = false,
      this.validationErrorMessage = 'Required',
      this.urlLauncher}) {
    _checked = initialValue;
  }
  void setStatus(bool checked) {
    _checked = checked;
  }

  bool getStatus() {
    return _checked;
  }
}

class TermOfServiceResult {
  TermOfService term;
  bool accepted;
  TermOfServiceResult({required this.term, required this.accepted});
}
