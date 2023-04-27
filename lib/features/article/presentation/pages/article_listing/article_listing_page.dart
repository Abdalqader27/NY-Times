import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import 'package:design/design.dart';
import 'package:ny_times/features/article/data/models/article_model.dart';

import '../../../../../core/injections/service_locator.dart';
import '../../../../../generated/l10n.dart';
import '../../manager/article_listing/article_listing_bloc.dart';
import 'components/article_list_item.dart';

class ArticleListingPage extends StatelessWidget {
  const ArticleListingPage({Key? key}) : super(key: key);
  static const path = '/$subPath';
  static const subPath = 'article-listing';
  static const name = 'article_listing';

  static const ValueKey pageKey = ValueKey(name);

  static Page pageBuilder(BuildContext context, GoRouterState state) {
    return MaterialPage<void>(
      key: state.pageKey,
      child: BlocProvider(
        create: (context) => ArticleListingBloc(sl())
          ..add(
            const ArticleListRequested(),
          ),
        child: const ArticleListingPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    final bloc = context.watch<ArticleListingBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text(s.app_name),
        actions: [
          IconButton(
            onPressed: () {
              _changeTheme(context);
            },
            icon: const Icon(Icons.dark_mode_outlined),
          )
        ],
      ),
      body: PageStateBuilder<ArticleModel>(
        state: bloc.state.pageState,
        refreshFunction: () {
          bloc.add(const ArticleListRequested());
        },
        success: (data) {
          final results = data.results;
          return RefreshIndicator(
            onRefresh: () async {
              bloc.add(const ArticleListRequested());
            },
            child: results.isEmpty
                ? Center(
                    child: Text(s.empty_page),
                  )
                : AnimationLimiter(
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: results.length,
                      itemBuilder: (context, index) {
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 375),
                          child: SlideAnimation(
                            verticalOffset: 50.0,
                            child: FadeInAnimation(
                              child: ArticleListItem(
                                result: results[index],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
          );
        },
      ),
    );
  }

  _changeTheme(BuildContext context) {
    var themeManager = AdaptiveTheme.of(context);
    if (themeManager.mode.isDark) {
      themeManager.setLight();
    } else {
      themeManager.setDark();
    }
  }
}
