import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import 'package:design/design.dart';
import 'package:ny_times/features/article/data/models/article_model.dart';

import '../../../../../generated/l10n.dart';
import '../../widgets/article_image.dart';

class ArticleDetailsPage extends StatefulWidget {
  const ArticleDetailsPage({Key? key, required this.result}) : super(key: key);
  static const path = '/$subPath';
  static const subPath = 'article-details';
  static const name = 'article_details';

  static const ValueKey pageKey = ValueKey(name);

  final Article result;

  static Page pageBuilder(BuildContext context, GoRouterState state) {
    final extra = state.extra as Article;

    return MaterialPage<void>(
      key: state.pageKey,
      child: ArticleDetailsPage(
        result: extra,
      ),
    );
  }

  @override
  State<ArticleDetailsPage> createState() => _ArticleDetailsPageState();
}

class _ArticleDetailsPageState extends State<ArticleDetailsPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    final theme = Theme.of(context);
    const iconSize = 15.0;

    return Scaffold(
      appBar: AppBar(
        title: Text(s.details_title),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsetsConstrains.listView,
        child: Column(
          children: [
            ArticleImage(
              result: widget.result,
              width: double.infinity,
              height: 300,
            ).animate().slide(
                  duration: 400.ms,
                  curve: Curves.linear,
                  begin: const Offset(1, 0),
                  delay: 400.ms,
                  end: Offset.zero,
                ),
            YouText.titleLarge('${widget.result.title}').animate().slide(
                  duration: 400.ms,
                  curve: Curves.linear,
                  begin: const Offset(1, 0),
                  delay: 400.ms,
                  end: Offset.zero,
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Text(
                    '${widget.result.source}',
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_month,
                      size: iconSize,
                    ),
                    Text(
                      '${widget.result.formattedPublishedDate}',
                      style: theme.textTheme.bodySmall,
                    ),
                  ].addSpacing(Space.hs),
                ),
              ],
            )
                .animate()
                .fadeIn(duration: 200.ms)
                .then(delay: 150.ms) // baseline=800ms
                .slide(duration: 200.ms, curve: Curves.linear),
            YouText.bodyLarge('${widget.result.abstract}')
                .animate()
                .fadeIn(duration: 200.ms)
                .then(delay: 150.ms) // baseline=800ms
                .slide(duration: 200.ms, curve: Curves.linear),
          ].addSpacing(Space.vm),
        ),
      ),
    );
  }
}
