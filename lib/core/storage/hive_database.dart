import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_list/features/todo/data/models/hive/todo_box_model.dart';

abstract class HiveDatabase {
  static Future<void> init() async {
    await Hive.initFlutter();

    Hive.registerAdapter<TodoBoxModel>(TodoBoxModelAdapter());
  }
}
