import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stream_transform/stream_transform.dart';

sealed class CounterEvent {}

final class CounterIncrementPressed extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) {
      // handle incoming 'CouterIncrementPressed' event
      addError(Exception('increment error!'), StackTrace.current);
      emit(state + 1);
    });
  }

  @override
  void onEvent(CounterEvent event) {
    // TODO: implement onEvent
    super.onEvent(event);
    print(event);
  }

  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }

  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    // TODO: implement onTransition
    super.onTransition(transition);
    print(transition);
  }
}
