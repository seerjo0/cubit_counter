import 'package:bloc/bloc.dart';
import '../models/home-state.dart';

class HomeController extends Cubit<HomeState> {
  HomeController()
      : super(
          HomeState(isLoading: true, counter: 0, apptheme: true),
        ) {
    Future.delayed(
      const Duration(seconds: 2),
    ).then((_) {
      emit(HomeState(isLoading: false, counter: state.counter, apptheme: state.apptheme));
    });
  }

  void increment() => emit(state.copyWith(counter: state.counter + 1));

  void decrement() => emit(state.copyWith(counter: state.counter - 1));

  void reset() => Future.delayed(const Duration(seconds: 1)).then((_) => emit(HomeState(isLoading: false, counter: 0, apptheme: state.apptheme)));

  void changeTheme() => emit(state.copyWith(apptheme: !state.apptheme));
}