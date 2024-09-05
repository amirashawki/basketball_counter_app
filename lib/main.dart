import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_project/cubit/counter_cubit.dart';
import 'package:third_project/cubit/counter_states.dart';
import 'package:third_project/home_page.dart';

void main() {
  runApp(Basketballcounter());
}

class Basketballcounter extends StatelessWidget {
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
    );
  }
}
