class ProjetModel {
  final String id;
  final String title;
  final String description;
  final String pathCover;
  final List<SectionModel> selection;

  ProjetModel(
      {required this.id,
      required this.title,
      required this.pathCover,
      required this.description,
      required this.selection});
}

class SectionModel {
  final String id;
  final String title;
  final List<TaskModel> tasklist;

  SectionModel({required this.tasklist, required this.id, required this.title});
}

class TaskModel {
  final String id;
  final String title;
  final bool isTrue;
  final DateTime creatAt;
  final DateTime completedAt;

  TaskModel(
      {required this.id,
      required this.title,
      required this.isTrue,
      required this.creatAt,
      required this.completedAt});
}
