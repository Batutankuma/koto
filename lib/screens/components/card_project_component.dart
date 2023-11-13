import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:koto/models/diagramme.dart';

class CardProjet extends StatelessWidget {
  final ProjetModel projetModel;
  const CardProjet({super.key, required this.projetModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(projetModel.pathCover), fit: BoxFit.cover),
        ),
        height: MediaQuery.of(context).size.height,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 1.0),
          child: Column(
            children: [
              //Nombre des tâches
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  projetModel.selection.length.toString(),
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              const SizedBox(height: 10),
              //Titre de Projet
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  projetModel.title,
                  style: const TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 10),
              //Description Projet
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  projetModel.description,
                  style: const TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
