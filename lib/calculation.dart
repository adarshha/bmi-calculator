import 'dart:math';

class BmiLogic {
  BmiLogic({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String showResults() {
    if (_bmi < 18) {
      return 'Underweight BMI range: 0 - 18 Kg/m2';
    } else if (_bmi > 18.5 && _bmi < 24.9) {
      return 'Normal BMI range:18.5 - 24.9 kg/m2';
    } else if (_bmi > 25 && _bmi < 29.9) {
      return 'Overweight BMI range: 25 - 29.9 kg/m2';
    } else if (_bmi > 30) {
      return ('Obesity BMI range : 30 kg/m2 and above ');
    } else {
      return ('Still Alive ???');
    }
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.\n ';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
