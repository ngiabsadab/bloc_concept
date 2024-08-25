import 'package:bloc_concept/simple_bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc.dart';
import 'counter_cubit.dart';

Future<void> main() async {
  Bloc.observer = SimpleBlocObserver();
  CounterBloc()
    ..add(CounterIncrementPressed())
    ..close();

  // final bloc = CounterBloc();
  // final subscription = bloc.stream.listen(print);
  // bloc.add(CounterIncrementPressed());
  // await Future.delayed(Duration.zero);
  // bloc.add(CounterIncrementPressed());
  // await Future.delayed(Duration.zero);
  // bloc.add(CounterIncrementPressed());
  // await Future.delayed(Duration.zero);
  // await subscription.cancel();
  // await bloc.close();

  // final bloc = CounterBloc();
  // print(bloc.state);
  // bloc.add(CounterIncrementPressed());
  // await Future.delayed(Duration.zero);
  // print(bloc.state);
  // await bloc.close();
}

Future<void> usageCubit() async {
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
