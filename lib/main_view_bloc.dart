import 'package:automaton_studio/views/about_view.dart';
import 'package:automaton_studio/views/configuration_view.dart';
import 'package:automaton_studio/views/help_view.dart';
import 'package:automaton_studio/views/home_view.dart';
import 'package:automaton_studio/views/load_project_view.dart';
import 'package:automaton_studio/views/projects_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_view_cubit.dart';

class MainCubitManager{

  static Widget mainScreen(BuildContext context){

    return BlocBuilder<ViewBloc, ViewCubit>(builder: (context,state){

      switch (state) {
        case ViewCubit.home: return const HomeView();
        case ViewCubit.about: return const AboutView();
        case ViewCubit.configuration: return const ConfigurationView();
        case ViewCubit.help: return const HelpView();
        case ViewCubit.loadProject: return const LoadProjectView();
        case ViewCubit.projects: return const ProjectsView();

        default: return const HomeView();
      }
    });
  }
}