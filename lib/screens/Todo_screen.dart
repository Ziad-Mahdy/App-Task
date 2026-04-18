import 'package:flutter/material.dart';
import 'package:flutter_application_2/Todo_cubit/todo_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TodoScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Todo List ")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(hintText: "Write your Task"),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      context.read<TodoCubit>().addTask(_controller.text);
                      _controller.clear(); 
                    }
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<TodoCubit, List<String>>(
              builder: (context, tasks) {
                return ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(tasks[index]),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () => context.read<TodoCubit>().removeTask(index),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}