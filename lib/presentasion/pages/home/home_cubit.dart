import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.loaded(showBack: false));

  void setShowBack(bool value) {
    emit(state.copyWith(showBack: value));
    emit(HomeState.loaded(showBack: value));
  }

  void toggleShowBack() {}
}
