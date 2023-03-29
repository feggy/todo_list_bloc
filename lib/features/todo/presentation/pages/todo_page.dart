import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/core/config/build_config.dart';
import 'package:todo_list/features/todo/presentation/bloc/todo_bloc.dart';

import 'package:todo_list/features/todo/presentation/widgets/button_add_todo_widget.dart';
import 'package:todo_list/features/todo/presentation/widgets/list_todo_widget.dart';
import 'package:todo_list/injector.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TodoBloc>()..add(const TodoEvent.init()),
      child: Scaffold(
        appBar: AppBar(title: Text(BuildConfig.appName)),
        floatingActionButton: const ButtonAddTodoWidget(),
        body: const ListTodoWidget(),
      ),
    );
  }
}
