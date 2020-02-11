import 'package:injectable/injectable.dart';

import 'i_counter_repository.dart';
import '../inject.dart';

@RegisterAs(ICounterRepository, env: Env.prod)
@injectable
class ProdCounterRepository implements ICounterRepository {
  @override
  getIncrement() => 1;
}
