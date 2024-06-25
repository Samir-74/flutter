import 'package:first_app/modules/counter/cubit/cubit.dart';
import 'package:first_app/modules/counter/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// state less contain one class provide widget

// state ful contain classes

// 1. first class provide widget
// 2. second class provide state from this widget

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit, CounterStates>(
        listener: (context, state) {
          if (state is CounterPlusState) {
            // print('plus state ${state.counter}');
          }
          ;
          if (state is CounterMinusState) {
            // print('Minus state ${state.counter}');
          }
          ;
          if (state is CounterResetState) {
            // print('reset state ${state.counter}');
          }
          ;
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Counter',
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          CounterCubit.get(context).minus();
                        },
                        child: const Text(
                          'Minus',
                          // style: TextStyle(
                          //   color: Colors.white,
                          // ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                        ),
                        child: Text(
                          '${CounterCubit.get(context).counter}',
                          style: const TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          CounterCubit.get(context).plus();
                        },
                        child: const Text(
                          'Plus',
                          // style: TextStyle(
                          //   color: Colors.white,
                          // ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  TextButton(
                    onPressed: () {
                      CounterCubit.get(context).reset();
                    },
                    child: const Text(
                      'Reset',
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
