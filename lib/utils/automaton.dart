enum BellState { idle, ringing }

enum BellEvent { start, end }

class BellStateMachine {
  BellState state = BellState.idle;

  void onEvent(BellEvent event) {
    switch (state) {
      case BellState.idle:
        if (event == BellEvent.start) state = BellState.ringing;
        break;
      case BellState.ringing:
        if (event == BellEvent.end) state = BellState.idle;
        break;
    }
  }
}
