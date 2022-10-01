import 'package:flutter/material.dart';

import '../components/default_image_button_widget.dart';

class ProjectsView extends StatefulWidget {

  const ProjectsView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProjectsView();
}

class _ProjectsView extends State<ProjectsView>{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            DefaultImageButton(text: "ABC", image: "deterministic.png"), 
          ],
        )
      )
    );
  }
}