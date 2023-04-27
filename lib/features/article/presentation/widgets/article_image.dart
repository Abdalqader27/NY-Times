import 'package:design/design.dart';
import 'package:ny_times/features/article/data/models/article_model.dart';

class ArticleImage extends StatelessWidget {
  const ArticleImage({
    Key? key,
    required this.result,
    this.replacement,
     this.width,
     this.height,
  }) : super(key: key);

  final Article result;
  final Widget? replacement;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      child: _imagePath() == null
          ? const Icon(Icons.image_not_supported)
          : Image.network(
              _imagePath()!,
              height: height,
              width: width,
              fit: BoxFit.fill,
            ),
    );
  }

  String? _imagePath() {
    if (result.media?.isEmpty ?? true) return null;
    if (result.media?[0].mediaMetadata.isEmpty ?? true) return null;
    return result.media?[0].mediaMetadata[0].url;
  }
}
