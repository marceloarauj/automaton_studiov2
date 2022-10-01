import 'package:flutter_bloc/flutter_bloc.dart';

enum ViewCubit{
  about,
  configuration,
  help,
  home,
  loadProject,
  projects
}

class ViewBloc extends Cubit<ViewCubit>{
  ViewBloc() : super(ViewCubit.home);
  void navigateTo(ViewCubit state) => emit(state);
}