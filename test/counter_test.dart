import 'package:dependency_injection/bloc/counter_bloc.dart';
import 'package:dependency_injection/inject.dart';
import 'package:dependency_injection/repository/i_counter_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  setUpAll(() {
    configureInjection(Env.mock);
  });

  test('Counter increase should work', () {
    var mockCounterRepository = getIt<ICounterRepository>();
    when(mockCounterRepository.getIncrement()).thenReturn(123);
    var counterBloc = CounterBloc(mockCounterRepository);
    var startCounter = counterBloc.currentCounter;

    counterBloc.increaseCounter();

    expect(startCounter, equals(0));
    verify(mockCounterRepository.getIncrement()).called(1);
    expect(counterBloc.currentCounter, equals(123));
  });
}
