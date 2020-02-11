// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dependency_injection/repository/dev_counter_repository.dart';
import 'package:dependency_injection/repository/i_counter_repository.dart';
import 'package:dependency_injection/repository/prod_counter_repository.dart';
import 'package:dependency_injection/repository/mock_counter_repository.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt getIt, {String environment}) {
  if (environment == 'dev') {
    _registerDevDependencies(getIt);
  }
  if (environment == 'prod') {
    _registerProdDependencies(getIt);
  }
  if (environment == 'mock') {
    _registerMockDependencies(getIt);
  }
}

void _registerDevDependencies(GetIt getIt) {
  getIt..registerFactory<ICounterRepository>(() => DevCounterRepository());
}

void _registerProdDependencies(GetIt getIt) {
  getIt..registerFactory<ICounterRepository>(() => ProdCounterRepository());
}

void _registerMockDependencies(GetIt getIt) {
  getIt..registerFactory<ICounterRepository>(() => MockCounterRepository());
}
