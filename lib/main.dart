import 'package:cubit_counter/src/routes/routes.dart';
import 'package:cubit_counter/src/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'src/views/home/home.dart';

void main() => runApp(
      BlocProvider(
        create: (context) => HomeController(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: const HomeScreen(),
          routes: Routes.routes,
        ),
      ),
    );
