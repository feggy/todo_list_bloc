import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/features/todo/domain/entities/todo.dart';
import 'package:todo_list/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:uuid/uuid.dart';

class ButtonAddTodoWidget extends StatelessWidget {
  const ButtonAddTodoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        final controller = TextEditingController(text: '');

        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text(
              'Add a new todo item',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
            content: TextFormField(
              controller: controller,
              style: const TextStyle(fontSize: 18),
              autocorrect: false,
              decoration: const InputDecoration(
                hintText: 'Type your new todo',
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);

                  final id = const Uuid().v4();
                  context.read<TodoBloc>().add(
                        TodoEvent.addTodo(
                          Todo(
                            id: id,
                            text: controller.text,
                          ),
                        ),
                      );
                },
                child: const Text('Add'),
              ),
            ],
          ),
        );
      },
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
