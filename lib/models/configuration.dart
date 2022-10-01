import 'package:flutter/material.dart';

class Configuration {
  
  Configuration({required this.stateColor, 
                  required this.transitionColor, 
                  required this.fontColor, 
                  required this.backgroundColor});

  Color stateColor;
  Color transitionColor;
  Color fontColor;
  Color backgroundColor;
}