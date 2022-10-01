import 'automaton_state.dart';

class Transition {
  
  Transition({required this.from, required this.to});

  AutomatonState from;
  AutomatonState to;
  
  List<String> symbols = [];
}