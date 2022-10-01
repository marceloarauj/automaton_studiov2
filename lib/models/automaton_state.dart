class AutomatonState {
  
  AutomatonState({required this.positionX, required this.positionY});

  late int id;
  late String label;

  bool onFocus = false;

  double positionX;
  double positionY;
}