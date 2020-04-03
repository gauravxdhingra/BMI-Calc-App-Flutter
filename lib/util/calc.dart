import 'dart:math';

class Calc {
  final int height;
  final int weight;

  double _bmi;

  Calc(this.height, this.weight);

  String calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String remarks() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi >= 18.5) {
      return 'UNDERWEIGHT';
    } else
      return 'NORMAL';
  }

  String remarkDetails() {
    if (_bmi >= 25) {
      return 'You\'ve a higher than normal body weight! Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You\'ve a normal body weight! Good job.';
    } else
      return 'You\'ve a lower than normal body weight! You can eat a bit more.';
  }
}
