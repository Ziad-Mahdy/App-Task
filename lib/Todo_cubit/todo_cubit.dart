import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<List<String>> {
  TodoCubit() : super([]);

  void addTask(String task) {
    emit([...state, task]); 
  }

  void removeTask(int index) {
    final newList = [...state];
    newList.removeAt(index);
    emit(newList);  
  }

  void editTask(int index, String newTask) {
  final newList = [...state];
  
  newList[index] = newTask;
  
  emit(newList);
}
}