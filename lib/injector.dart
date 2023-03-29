import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_list/injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false, generateForDir: ['lib', 'test'])
Future<void> configureDependencies(String environment) async =>
    getIt.init(environment: environment);
