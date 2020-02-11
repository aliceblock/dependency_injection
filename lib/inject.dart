import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'inject.iconfig.dart';

var getIt = GetIt.instance;

@injectableInit
void configureInjection(String environment) =>
    $initGetIt(getIt, environment: environment);

abstract class Env {
  static const mock = 'mock';
  static const dev = 'dev';
  static const prod = 'prod';
}
