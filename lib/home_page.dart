import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_project/cubit/counter_cubit.dart';
import 'package:third_project/cubit/counter_states.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int teamApoints = BlocProvider.of<CounterCubit>(context).teamApoints;
    int teamBpoints = BlocProvider.of<CounterCubit>(context).teamBpoints;
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text(
              'Points Counter',
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [
                      Text(
                        'Team A',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        '${teamApoints}',
                        style: TextStyle(fontSize: 150),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .incrementTeamBpoints(1, 'A');
                        },
                        child: Text(
                          'Add 1 point ',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(100, 40),
                        ),
                      ),
                    const  SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .incrementTeamBpoints(2, 'A');
                        },
                        child: Text(
                          'Add 2 point ',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(100, 40),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .incrementTeamBpoints(3, 'A');
                        },
                        child: Text(
                          'Add 3 point ',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(100, 40),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 400,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    Column(children: [
                      Text(
                        'Team B',
                        style: TextStyle(fontSize: 30),
                      ),
                      Text(
                        '${teamBpoints}',
                        style: TextStyle(fontSize: 150),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .incrementTeamBpoints(1, 'B');
                        },
                        child: Text(
                          'Add 1 point ',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(100, 40),
                        ),
                      ),
                   const   SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .incrementTeamBpoints(2, 'B');
                        },
                        child: Text(
                          'Add 2 point ',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(100, 40),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .incrementTeamBpoints(3, 'B');
                        },
                        child: Text(
                          'Add 3 point ',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(100, 40),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      teamBpoints = 0;
                      teamApoints = 0;
                    });
                  },
                  child: Text(
                    'Reset ',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: Size(150, 40),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
