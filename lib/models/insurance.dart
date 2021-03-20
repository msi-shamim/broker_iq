class Insurance {
  String _title;
  String _broker;
  String _renewalDate;
  double _amount;

  Insurance.allData(this._title, this._broker, this._renewalDate, this._amount);

  double get amount => _amount;

  set amount(double value) {
    _amount = value;
  }

  String get renewalDate => _renewalDate;

  set renewalDate(String value) {
    _renewalDate = value;
  }

  String get broker => _broker;

  set broker(String value) {
    _broker = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }
}