import 'dart:async';

import '../repository/i_counter_repository.dart';

class CounterBloc {
  CounterBloc(this._counterRepository) {}

  final ICounterRepository _counterRepository;

  var _counter = 0;

  var _counterController = StreamController<int>();
  get counterStream => _counterController.stream;
  get currentCounter => _counter;

  increaseCounter() {
    _counter += _counterRepository.getIncrement();
    _counterController.sink.add(_counter);
  }

  dispose() {
    _counterController.close();
  }
}
