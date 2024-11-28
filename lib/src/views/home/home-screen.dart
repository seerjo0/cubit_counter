import 'package:cubit_counter/src/controllers/home_controller.dart';
import 'package:cubit_counter/src/models/home-state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeController, HomeState>(
      listener: (context, state) {
        switch (state.counter) {
          case == -1:
            Navigator.pushNamed(context, '/other-page');
            context.read<HomeController>().reset();
          case == 3:
            showDialog<String>(
              context: context,
              builder: (context) => AlertDialog(
                content: Text(
                  'counter is ${state.counter}',
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text(
                      'OK',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            );
            context.read<HomeController>().reset();
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Cubit Counter App',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.indigo.shade900,
            actions: [
              IconButton(
                icon: Icon(
                  context.read<HomeController>().state.apptheme
                      ? Icons.light_mode
                      : Icons.dark_mode,
                  color: Colors.white,
                ),
                onPressed: context.read<HomeController>().changeTheme,
              )
            ],
          ),
          body: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${context.read<HomeController>().state.counter}',
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    'When the counter is 3, a dialog will appear and when the counter is -1, it will navigate to the other page',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                heroTag: 'increase',
                onPressed: context.read<HomeController>().increment,
                backgroundColor: Colors.indigo.shade900,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              FloatingActionButton(
                heroTag: 'decrease',
                onPressed: context.read<HomeController>().decrement,
                backgroundColor: Colors.indigo.shade900,
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
