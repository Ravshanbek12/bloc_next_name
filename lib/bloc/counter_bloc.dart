import 'package:flutter_bloc/flutter_bloc.dart';

sealed class CounterEvent {}

final class CounterIncrementPressed extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, String> {
  CounterBloc() : super('0') {
    on<CounterIncrementPressed>((event, emit) {
      emit(list[int.parse(state)+1]);
    });
  }
}

final list = <String>[
  'Fotima,',
  'Aziz',
  'Gulruh',
  'Hojiakbar',
  'Sohibjon',
  'MuhammadAmin',
  'Ravshanbek',
  'Mahmudhon',
  'MuhammaRasul',
  'Axmadjon',
  'Javohir',
  'Ozod',
  'Dovudxon',
  'Jahongir',
  'MuhammadSaid',
  'Sardor',
  'Mehrojiddin',
  'Feruzbek'
];
