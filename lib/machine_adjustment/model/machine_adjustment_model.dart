class MachineAdjustmentModel{
  late String _sno;
  late bool _checkBox;
  late String _madeTitle;
  late String _firstTime;
  late String _firstResult;
  late String _secondTime;
  late String _secondResult;
  late String _thirdTime;
  late String _thirdResult;

  MachineAdjustmentModel(this._sno,this._checkBox,this._madeTitle, this._firstTime, this._firstResult, this._secondTime, this._secondResult, this._thirdTime, this._thirdResult,
      );

  String get madeTitle => _madeTitle;

  set madeTitle(String value) {
    _madeTitle = value;
  }

  String get thirdResult => _thirdResult;

  set thirdResult(String value) {
    _thirdResult = value;
  }

  String get thirdTime => _thirdTime;

  set thirdTime(String value) {
    _thirdTime = value;
  }

  String get secondResult => _secondResult;

  set secondResult(String value) {
    _secondResult = value;
  }

  String get secondTime => _secondTime;

  set secondTime(String value) {
    _secondTime = value;
  }

  String get firstResult => _firstResult;

  set firstResult(String value) {
    _firstResult = value;
  }

  String get firstTime => _firstTime;

  set firstTime(String value) {
    _firstTime = value;
  }

  bool get checkBox => _checkBox;

  set checkBox(bool value) {
    _checkBox = value;
  }

  String get sno => _sno;

  set sno(String value) {
    _sno = value;
  }
}