import 'package:cubit_counter/src/models/home-state.dart';
import 'package:cubit_counter/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cubit Counter App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade900,
      ),
      body: BlocConsumer<HomeController, HomeState>(
        listener: (context, state) {
          if (state.isLoading) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
          switch (state.counter) {
            case == -1:
              Navigator.pushNamed(context, '/other-page');
            case == 3:
              showDialog<String>(
                context: context,
                builder: (context) => AlertDialog(
                  content: Text(
                    'counter is ${BlocProvider.of<HomeController>(context).state.counter}',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
          }
        },
        builder: (context, state) {
          return Center(
            child: Text(
              '${state.counter}',
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increase',
            onPressed: BlocProvider.of<HomeController>(context).increment,
            backgroundColor: Colors.indigo.shade900,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            heroTag: 'decrease',
            onPressed: BlocProvider.of<HomeController>(context).decrement,
            backgroundColor: Colors.indigo.shade900,
            child: const Icon(
              Icons.remove,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
