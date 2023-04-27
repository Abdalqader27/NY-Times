import 'features/article/data/remote/article_remote_test.dart'
    as article_remote;
import 'features/article/data/repositories/articles_repository_test.dart'
    as articles_repository_test;
import 'features/article/presentation/manager/articles_test_bloc/articles_test_bloc.dart'
    as articles_test_bloc;
import 'test_tools/helper.dart';

void main() async {
  await TestHelper.setUpForFlutterRun();

  article_remote.main();
  articles_repository_test.main();
  articles_test_bloc.main();
}
