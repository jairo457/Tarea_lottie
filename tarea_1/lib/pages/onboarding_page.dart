import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tarea_1/pages/home_page.dart';

import '../widget/card_planet.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({Key? key}) : super(key: key);

  final data = [
    CardPlanetData(
      title: "Tecnologico de Celaya",
      subtitle:
          "El Tecnológico de Celaya ahora TecNM en Celaya es una institución de educación superior.",
      image: const AssetImage("assets/images/tecno.png"),
      backgroundColor: const Color.fromRGBO(0, 10, 56, 1),
      titleColor: Colors.pink,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/libros_1.json"),
    ),
    CardPlanetData(
      title: "Misión",
      subtitle:
          "Contribuir a la transformación de la sociedad a través de la formación de ciudadanas y ciudadanos libres y responsables, con sentido de la iniciativa, el respeto, la equidad, la cooperación, la actitud creativa y emprendedora, orientados a la investigación e innovación.",
      image: const AssetImage("assets/images/apro.png"),
      backgroundColor: Colors.white,
      titleColor: Colors.purple,
      subtitleColor: const Color.fromRGBO(0, 10, 56, 1),
      background: LottieBuilder.asset("assets/animation/verde_1.json"),
    ),
    CardPlanetData(
      title: "Visión",
      subtitle:
          "Ser una institución de educación superior tecnológica reconocida a nivel internacional por el destacado desempeño de sus egresadas y egresados que impulsan el desarrollo social y económico sostenible, a través de la innovación e investigación, buscando el bienestar común.",
      image: const AssetImage("assets/images/eye.png"),
      backgroundColor: const Color.fromRGBO(71, 59, 117, 1),
      titleColor: Colors.yellow,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/square.json"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
        onFinish: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
      ),
    );
  }
}
