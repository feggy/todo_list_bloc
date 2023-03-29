import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/core/utils/constants.dart';
import 'package:todo_list/features/todo/data/models/hive/todo_box_model.dart';

abstract class TodoHive {
  Future<List<TodoBoxModel>> fetchTodos();
  Future<void> addTodo(TodoBoxModel todo);
  Future<void> archiveTodo(String id);
}

@LazySingleton(as: TodoHive)
class TodoHiveImpl implements TodoHive {
  Future<Box<TodoBoxModel>> openTodo() async {
    if (!Hive.isBoxOpen(HiveKey.todo)) {
      await Hive.openBox<TodoBoxModel>(HiveKey.todo);
    }

    return Hive.box<TodoBoxModel>(HiveKey.todo);
  }

  @override
  Future<void> addTodo(TodoBoxModel todo) async {
    final box = await openTodo();

    await box.add(
      TodoBoxModel(
        id: todo.id,
        text: todo.text,
        isArchive: todo.isArchive,
      ),
    );
  }

  @override
  Future<void> archiveTodo(String id) async {
    final box = await openTodo();

    box.toMap().forEach((key, value) async {
      if (value.id == id) {
        await box.put(
          key,
          TodoBoxModel(
            id: value.id,
            text: value.text,
            isArchive: !value.isArchive,
          ),
        );
      }
    });
  }

  @override
  Future<List<TodoBoxModel>> fetchTodos() async {
    final box = await openTodo();

    final todos = box.toMap().entries.map((e) => e.value).toList();

    return todos;
  }
}
