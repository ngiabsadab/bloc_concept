import 'package:bloc_concept/simple_bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_cubit.dart';

Future<void> main() async {
  Bloc.observer = SimpleBlocObserver();
  CounterCubit()
    ..increment()
    ..close();

  // final cubit = CounterCubit();
  // final subscription = cubit.stream.listen(print);
  // cubit.increment();
  // await Future.delayed(Duration.zero);
  // cubit.increment();
  // await Future.delayed(Duration.zero);
  // await subscription.cancel();
  // cubit.close();
}
