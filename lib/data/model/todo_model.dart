import 'package:isar/isar.dart';

part 'todo_model.g.dart';

@collection
class Todo {
  Id isarId = Isar.autoIncrement;
  late String title;
  late bool completed;
}
