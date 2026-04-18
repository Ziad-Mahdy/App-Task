import 'package:flutter_bloc/flutter_bloc.dart';

class Seb7aCubit extends Cubit<int> {
  Seb7aCubit() : super(0);

  void increment() => emit(state + 1);


  void reset() => emit(0);
   
}