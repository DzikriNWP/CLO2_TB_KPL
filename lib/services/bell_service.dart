import '../utils/automaton.dart';

class BellService {
  final BellStateMachine fsm = BellStateMachine();

  void ringBell() {
    if (fsm.state == BellState.idle) {
      fsm.onEvent(BellEvent.start);
      print("Bell rings!");
      fsm.onEvent(BellEvent.end);
    }
  }
}
