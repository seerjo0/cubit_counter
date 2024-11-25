import 'package:bloc/bloc.dart';
import '../models/home-state.dart';

class HomeController extends Cubit<HomeState> {
  HomeController()
      : super(
          HomeState(isLoading: true, counter: 0),
        ) {
    Future.delayed(
      const Duration(seconds: 2),
    ).then((_) {
      emit(HomeState(isLoading: false, counter: state.counter));
    });
  }
  void increment() => emit(state.copyWith(counter: state.counter + 1));

  void decrement() => emit(state.copyWith(counter: state.counter - 1));

  void reset() => emit(HomeState(isLoading: false, counter: 0));
}
