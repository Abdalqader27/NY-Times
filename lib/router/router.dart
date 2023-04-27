import 'package:core/core.dart';
import 'package:design/design.dart';
import 'package:go_router/go_router.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:ny_times/router/routes.dart';

class AppRouter {
  AppRouter();

  // private navigators
  final _rootNavigatorKey = GlobalKey<NavigatorState>();

  late final goRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: _routes,
    debugLogDiagnostics: true,
    observers: [
      BotToastNavigatorObserver(),
    ],
    initialLocation: ArticleListingPage.path,
    redirect: (context, state) => _rootRedirect(context, state),
  );

  BuildContext get context =>
      goRouter.routerDelegate.navigatorKey.currentState!.context;

  List<RouteBase> get _routes => [
        GoRoute(
          path: ArticleListingPage.path,
          name: ArticleListingPage.name,
          pageBuilder: ArticleListingPage.pageBuilder,
        ),
        GoRoute(
          path: ArticleDetailsPage.path,
          name: ArticleDetailsPage.name,
          pageBuilder: ArticleDetailsPage.pageBuilder,
        ),
      ];

  Future<String?> _rootRedirect(
    BuildContext context,
    GoRouterState state,
  ) async {
    return null;
  }
}
