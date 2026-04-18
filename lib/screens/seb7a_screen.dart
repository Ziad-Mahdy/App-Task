import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/counter_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../seb7a_cubit/seb7a_cubit.dart';

class Seb7aScreen extends StatelessWidget {
  const Seb7aScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("سبحة إلكترونية"), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("عدد التسبيحات", style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            
           CounterText(),
            
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => context.read<Seb7aCubit>().increment(),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () => context.read<Seb7aCubit>().reset(),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent, foregroundColor: Colors.white),
                  child: const Icon(Icons.refresh),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}