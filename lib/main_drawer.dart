import 'package:automaton_studio/main_view_cubit.dart';
import 'package:automaton_studio/utils/platform_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 3,
      child: ListView(
        children: _elements(context),
      ),
    );
  }

  List<Widget> _elements(BuildContext context) {
    List<Widget> list = [];

    list.addTileRange(_tileContent("Home", Icons.home, context, ViewCubit.home));
    list.addTileRange(_tileContent("New Project", Icons.widgets, context, ViewCubit.projects));
    list.addTileRange(_tileContent("Load Project", Icons.folder, context, ViewCubit.loadProject));
    list.addTileRange(_tileContent("Open Drive", Icons.add_to_drive, context, ViewCubit.home));
    list.addTileRange(_tileContent("Configuration", Icons.build, context, ViewCubit.configuration));
    list.addTileRange(_tileContent("Help", Icons.help_outline_outlined, context, ViewCubit.help));
    list.addTileRange(_tileContent("About", Icons.alternate_email, context, ViewCubit.about));

    if (!PlatformUtils.isWeb() && !PlatformUtils.isDesktop()) {
      list.addTileRange(_tileContent("Exit", Icons.exit_to_app, context, null));
    }
    
    return list;
  }

  Container _tileContent(
      String title, IconData icon, BuildContext context, ViewCubit? cubit) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment(0.6, 1),
                colors: [
                  Colors.green,
                  Color.fromRGBO(40, 40, 40, 1)
                ],
                tileMode: TileMode.clamp)),
        child: ListTile(
            key: Key(title),
            title: Text(title),
            trailing: Icon(icon),
            onTap: cubit == null
                ? () => exitApp()
                : () => navigate(context, cubit)));
  }

  void navigate(BuildContext context, ViewCubit cubit){
    context.read<ViewBloc>().navigateTo(cubit);
    Navigator.pop(context);
  }

  void exitApp() => SystemNavigator.pop();
}

extension AddRange on List<Widget> {
  List<Widget> addTileRange(Container element) {
    add(element);
    add(const Divider(height: 1));
    return this;
  }
}
