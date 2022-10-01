import 'package:flutter/cupertino.dart';

extension ScreenUtil on MediaQueryData{

  double getWidth() => size.width;

  double getHeigth() => size.height;
  
  double widthByPercent(double percent) => size.width * (percent / 100);
  
  double heightByPercent (double percent) => size.height * (percent / 100);
  
}