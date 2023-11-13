import 'package:koto/models/diagramme.dart';

List<ProjetModel> generateProjetList = [
  ProjetModel(
    id: '1',
    title: 'Projet 1',
    pathCover:
        'https://cdn.dribbble.com/userupload/8846730/file/original-e41d4f546b68034d9f96c7a48a3622a4.png',
    description: 'Description du projet 1',
    selection: [
      SectionModel(
        id: '1',
        title: 'Section 1',
        tasklist: [
          TaskModel(
            id: '1',
            title: 'Tâche 1',
            isTrue: true,
            creatAt: DateTime.now(),
            completedAt: DateTime.now(),
          ),
          TaskModel(
            id: '2',
            title: 'Tâche 2',
            isTrue: false,
            creatAt: DateTime.now(),
            completedAt: DateTime.now(),
          ),
        ],
      ),
      SectionModel(
        id: '2',
        title: 'Section 2',
        tasklist: [
          TaskModel(
            id: '3',
            title: 'Tâche 3',
            isTrue: true,
            creatAt: DateTime.now(),
            completedAt: DateTime.now(),
          ),
        ],
      ),
    ],
  ),
  // Ajoutez d'autres projets ici selon vos besoins
];
