import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text("Autor: Marcelo de Araújo Elias",
                style: TextStyle(fontSize: 20)),
            const SizedBox(height: 60),
            const Text("Email: marcelo.araujo18081998@gmail.com",
                style: TextStyle(fontSize: 20)),
            const SizedBox(height: 60),
            InkWell(
                child: const Text(
                    "https://www.linkedin.com/in/marcelo-araújo-189352221",
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.blue, fontSize: 20)),
                onTap: () => launch(
                    "https://www.linkedin.com/in/marcelo-araújo-189352221")),
            const SizedBox(height: 60),
            const Text(
                "Projeto desenvolvido de forma independente para criação e execução de funções relacionadas à teoria da computação e autômatos",
                textAlign: TextAlign.center)
          ]),
    ));
  }
}
