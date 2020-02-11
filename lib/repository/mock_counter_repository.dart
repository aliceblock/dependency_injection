import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

import 'i_counter_repository.dart';
import '../inject.dart';

@RegisterAs(ICounterRepository, env: Env.mock)
@injectable
class MockCounterRepository extends Mock implements ICounterRepository {}
