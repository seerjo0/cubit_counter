import 'package:cubit_counter/src/controllers/home_controller.dart';
import 'package:cubit_counter/src/models/home-state.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Initial state', () {
    final homeController = HomeController();
    final initialHomeState = HomeState(isLoading: true, counter: 0);

    expect(homeController.state, initialHomeState);
  });

  test('Increment', () {
    final homeController = HomeController();
    homeController.increment();

    expect(homeController.state.counter, 1);
  });

  test('Decrement', () {
    final homeController = HomeController();
    homeController.decrement();

    expect(homeController.state.counter, -1);
  });

  test('Reset', () {
    final homeController = HomeController();
    homeController.reset();

    expect(homeController.state, HomeState(isLoading: true, counter: 0));
  });
}