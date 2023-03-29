import 'package:todo_list/app/app.dart';
import 'package:todo_list/bootstrap.dart';
import 'package:todo_list/core/config/build_config.dart';

void main() {
  BuildConfig.setEnvironment(Env.staging);

  bootstrap(
    () => const App(),
    Env.staging.name,
  );
}
