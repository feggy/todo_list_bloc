import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:todo_list/features/todo/presentation/widgets/item_todo_widget.dart';

class ListTodoWidget extends StatelessWidget {
  const ListTodoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoBloc, TodoState>(
      builder: (context, state) {
        if (state.status == TodoStatus.fetching) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.todo.isEmpty) {
          return const Center(
            child: Text(
              'Belum ada todo tersimpan',
            ),
          );
        }

        return ListView(
          padding: const EdgeInsets.symmetric(vertical: 10),
          children: List.generate(
            state.todo.length,
            (index) => ItemTodoWidget(state.todo[index]),
          ),
        );
      },
    );
  }
}
