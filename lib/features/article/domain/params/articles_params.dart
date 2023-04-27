import 'package:core/core.dart';

class ArticlesParams extends Params {
  ArticlesParams({
    this.section = 'all-sections',
    this.period = 7,
  });

  final String section;
  final int period;

  @override
  Map<String, dynamic> toMap() {
    return {
      "section": section,
      "period": period,
    };
  }
}
