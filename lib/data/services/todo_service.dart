import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../model/todo_model.dart';

class DatabaseServices {
  static late Isar isar;

  static Future<void> initDatabase() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([TodoSchema], directory: dir.path);
  }
}
