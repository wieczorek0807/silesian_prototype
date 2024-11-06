import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.dart';
part 'navigation_cubit.freezed.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(const NavigationState.silesian());

  void navigate(int index) {
    switch (index) {
      case 0:
        emit(const NavigationState.silesian());
        break;
      case 1:
        emit(const NavigationState.news());
        break;
      case 2:
        emit(const NavigationState.events());
        break;
      case 3:
        emit(const NavigationState.explore());
        break;
    }
  }
}
