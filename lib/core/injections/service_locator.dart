import 'package:get_it/get_it.dart';

import 'features/_common_dependencies.dart';
import 'features/article_dependencies.dart';

final sl = GetIt.I;
bool kTestMode = false;

Future<void> inject() async {
  await commonDependencies();
  await articleDependencies();
}
