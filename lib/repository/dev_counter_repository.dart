import 'package:injectable/injectable.dart';

import 'i_counter_repository.dart';
import '../inject.dart';

@RegisterAs(ICounterRepository, env: Env.dev)
@injectable
class DevCounterRepository implements ICounterRepository {
  @override
  getIncrement() => 100;
}
