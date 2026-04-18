import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../seb7a_cubit/seb7a_cubit.dart';

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Seb7aCubit, int>(
      builder: (context, count) {
        return Text(
          '$count',
          style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
        );
      },
    );
  }
}