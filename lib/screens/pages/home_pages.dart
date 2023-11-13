import 'package:flutter/material.dart';
import 'package:koto/models/data.dart';
import 'package:koto/screens/components/card_project_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            const Text(
              "ToDay",
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
            ),
            const SizedBox(height: 10),
            const SearchBar(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.dribbble.com/users/1355613/screenshots/15252730/media/28f348daf9654c440f5dcf398d8e097a.jpg"),
              ),
              trailing: [Icon(Icons.search)],
            ),
            const SizedBox(height: 15),
            //section des projets
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Projet",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: generateProjetList.length,
                itemBuilder: (context, index) {
                  return CardProjet(projetModel: generateProjetList[index]);
                },
              ),
            ),
            const SizedBox(height: 20),
            //section des tâches
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Tâches",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Theme.of(context).primaryColor),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: generateProjetList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(),
                    title: Text(generateProjetList[index]
                        .selection[0]
                        .tasklist[0]
                        .title),
                    subtitle: Text(
                      generateProjetList[index]
                          .selection[0]
                          .tasklist[0]
                          .completedAt
                          .toString(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
