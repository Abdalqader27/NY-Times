import 'package:design/design.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:go_router/go_router.dart';
import 'package:ny_times/features/article/presentation/pages/article_details/article_detail_page.dart';

import '../../../../data/models/article_model.dart';
import '../../../widgets/article_image.dart';

class ArticleListItem extends StatelessWidget {
  const ArticleListItem({Key? key, required this.result}) : super(key: key);

  final Article result;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    const iconSize = 15.0;
    const maxLines = 2;

    const duration = Duration(milliseconds: 200);

    return Card(
      elevation: 0,
      child: Bounce(
        duration: duration,
        onPressed: () {
          _openArticleDetails(context);
        },
        child: Padding(
          padding: EdgeInsetsConstrains.listTile,
          child: Center(
            child: ListTile(
                title: YouText.titleMedium(
                  '${result.title}',
                  maxLines: maxLines,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  textOverflow: TextOverflow.ellipsis,
                ),
                subtitle: Column(
                  children: [
                    YouText.bodyMedium(
                      '${result.abstract}',
                      maxLines: maxLines,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Text(
                            '${result.source}',
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
                              '${result.formattedPublishedDate}',
                              style: theme.textTheme.bodySmall,
                            ),
                          ].addSpacing(Space.hs),
                        ),
                      ],
                    )
                  ].addSpacing(Space.vs),
                ),
                leading: ArticleImage(
                  result: result,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Theme.of(context).colorScheme.onSurface,
                )),
          ),
        ),
      ),
    );
  }

  void _openArticleDetails(BuildContext context) {
    context.pushNamed(
      ArticleDetailsPage.name,
      extra: result,
    );
  }
}
