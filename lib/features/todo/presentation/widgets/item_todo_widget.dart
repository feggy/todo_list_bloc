import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/features/todo/domain/entities/todo.dart';
import 'package:todo_list/features/todo/presentation/bloc/todo_bloc.dart';

class ItemTodoWidget extends StatelessWidget {
  const ItemTodoWidget(
    this.todo, {
    super.key,
  });

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.read<TodoBloc>().add(TodoEvent.archiveTodo(todo.id)),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.shade700,
              ),
              child: Center(
                child: Text(
                  todo.text.characters.first,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 15),
            Text(
              todo.text,
              style: TextStyle(
                fontSize: 20,
                color: todo.isArchive ? Colors.grey.shade700 : Colors.black,
                decoration: todo.isArchive ? TextDecoration.lineThrough : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
