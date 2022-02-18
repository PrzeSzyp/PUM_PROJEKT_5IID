import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Nadwaga';
    } else if (_bmi > 18.5) {
      return 'W normie';
    } else {
      return 'Niedowaga';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Ważysz za dużo. Może czas na redukcję?';
    } else if (_bmi >= 18.5) {
      return 'Masz odpowiednią wagę. Oby tak dalej!';
    } else {
      return 'Ważysz za mało!. Czas zrobić masę ;).';
    }
  }
}
