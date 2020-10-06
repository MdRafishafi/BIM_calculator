import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain{
  final int heigth;
  final int weight;
  double _bmi;

  CalculatorBrain({@required this.weight, @required this.heigth});

  String CalculateBMI(){
    _bmi = weight / pow(heigth / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overwwight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'Yoe have a higher than normal body weight. Try to exercise more.';
    }else if(_bmi > 18.5){
      return 'You have a normal body weight. Good job!.';
    }else {
      return 'You have a lower then normal body weight. You can eat a bit more.';
    }
  }

}